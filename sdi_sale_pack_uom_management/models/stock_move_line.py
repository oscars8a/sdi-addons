
from odoo import api, fields, models
from odoo.addons import decimal_precision as dp


class StockMoveLine(models.Model):
    _inherit = 'stock.move.line'

    boxes = fields.Integer(
        string='Boxes',
        compute="_compute_boxes"
    )
    units = fields.Float(
        string="Units",
        digits=dp.get_precision('Product Unit of Measure'),
        compute='_compute_boxes',
    )

    @api.multi
    def _compute_boxes(self):
        for line in self:
            aux = 0
            if line.sale_line.product_uom.factor < 1:
                aux = line.sale_line.product_uom_qty
            line.boxes = aux
            line.units = line.qty_done * line.product_uom_id.factor_inv

    def _calculate_price_unit(self):
        return self.sale_line.price_unit * self.sale_line.product_uom.factor
    def _calculate_units(self):
        return self.units
