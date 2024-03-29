��             +         �  �  �  D   Y  H   �  
   �  �   �     �	     �	     �	  !   �	  (   �	      
      @
     a
  "   
     �
     �
     �
      �
               "     +     >     ^     u     �     �     �     �     �  
   �    �  �  �  E   }  J   �  
     �        �     �  !   �  $     "   '     J  '   j     �  %   �     �     �               ?     G     T     ]  '   y     �     �     �     �     �  	                                                                     
                                                        	                                
                

<p>Dear ${object.partner_id.name}
% set access_action = object.with_context(force_website=True).get_access_action()
% set is_online = access_action and access_action['type'] == 'ir.actions.act_url'
% set doc_name = 'order confirmation'
% set pay_sign_name =  object.get_portal_confirmation_action()
% set access_name = is_online and object.state in ('draft', 'sent') and pay_sign_name in ('pay', 'sign') and 'Accept and %s online' % pay_sign_name or 'View %s' % doc_name
% set access_url = is_online and object.get_mail_url() or ''

% if object.partner_id.parent_id:
    (<i>${object.partner_id.parent_id.name}</i>)
% endif
,</p>
<p>
Here is
the ${doc_name} <strong>${object.name}</strong>
% if object.origin:
(with reference: ${object.origin} )
% endif
from ${object.company_id.name}.
</p>

% if is_online:
    <br/><br/>
    <center>
        <a href="${access_url}" style="background-color: #1abc9c; padding: 20px; text-decoration: none; color: #fff; border-radius: 5px; font-size: 16px;" class="o_default_snippet_text">${access_name}</a>
        <br/><br/><br/>
        <span style="color:#888888">(or view attached PDF)</span>
    </center>
    <br/>
% endif

<p>You can reply to this email if you have any questions.</p>
<p>Thank you,</p>

<p style="color:#888888;">
% if object.user_id and object.user_id.signature:
    ${object.user_id.signature | safe}
% endif
</p>

                
              ${object.company_id.name} ${'Order'} (Ref ${object.name or 'n/a' })  ${object.company_id.name} ${'Quotation'} (Ref ${object.name or 'n/a' }) &amp;bull; &amp;nbsp;
                                                        <span>on</span>
                                                        &amp;nbsp; <span>Order #</span> <span>Quotation #</span> <strong>Date Ordered:</strong> <strong>Expiration Date:</strong> <strong>Fiscal Position Remark:</strong> <strong>Payment Terms:</strong> <strong>Quotation Date:</strong> <strong>Salesperson:</strong> <strong>Shipping address:</strong> <strong>Subtotal:</strong> <strong>Subtotal</strong> <strong>Total</strong> <strong>Your Reference:</strong> Amount Description Disc.(%) Invoicing address: Invoicing and shipping address: ORDER - ${object.name} Order Report Quantity Quotation - ${object.name} Quotation Report Taxes Total Price Unit Price Project-Id-Version: Odoo Server 11.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2019-08-05 12:49+0200
Last-Translator: <>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: 
Language: es
X-Generator: Poedit 2.0.6
 
                

<p>Dear ${object.partner_id.name}
% set access_action = object.with_context(force_website=True).get_access_action()
% set is_online = access_action and access_action['type'] == 'ir.actions.act_url'
% set doc_name = 'order confirmation'
% set pay_sign_name =  object.get_portal_confirmation_action()
% set access_name = is_online and object.state in ('draft', 'sent') and pay_sign_name in ('pay', 'sign') and 'Accept and %s online' % pay_sign_name or 'View %s' % doc_name
% set access_url = is_online and object.get_mail_url() or ''

% if object.partner_id.parent_id:
    (<i>${object.partner_id.parent_id.name}</i>)
% endif
,</p>
<p>
Here is
the ${doc_name} <strong>${object.name}</strong>
% if object.origin:
(with reference: ${object.origin} )
% endif
from ${object.company_id.name}.
</p>

% if is_online:
    <br/><br/>
    <center>
        <a href="${access_url}" style="background-color: #1abc9c; padding: 20px; text-decoration: none; color: #fff; border-radius: 5px; font-size: 16px;" class="o_default_snippet_text">${access_name}</a>
        <br/><br/><br/>
        <span style="color:#888888">(or view attached PDF)</span>
    </center>
    <br/>
% endif

<p>You can reply to this email if you have any questions.</p>
<p>Thank you,</p>

<p style="color:#888888;">
% if object.user_id and object.user_id.signature:
    ${object.user_id.signature | safe}
% endif
</p>

                
              ${object.company_id.name} ${'Pedido'} (Ref ${object.name or 'n/a' })  ${object.company_id.name} ${'Presupuesto'} (Ref ${object.name or 'n/a' }) &amp;bull; &amp;nbsp;
                                                        <span>on</span>
                                                        &amp;nbsp; <span>Pedido #</span> <span>Presupuesto #</span> <strong>Fecha de pedido:</strong> <strong>Fecha de caducidad:</strong> <strong>Posición Fiscal:</strong> <strong>Plazo de pago:</strong> <strong>Fecha del presupuesto:</strong> <strong>Comercial</strong> <strong>Dirección de envío</strong> <strong>Subtotal:</strong> <strong>Subtotal</strong> <strong>Total</strong> <strong>Su referencia:</strong> Importe Descripción Desc.(%) Dirección de facturación: Dirección de facturación y de envío: PEDIDO - ${object.name} Informe de Pedido Cantidad Presupuesto - ${object.name} Informe de Presupuesto Impuestos Precio total Precio unitario 