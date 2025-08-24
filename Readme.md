# 📝 DBGrid - Alterar Título da Coluna com PopupMenu (Delphi RAD Studio 12)

Este exemplo demonstra como alterar dinamicamente o **título de uma coluna do `TDBGrid`** em Delphi usando um `TPopupMenu`.  
Quando o usuário clica no título da coluna, um menu de opções aparece e permite trocar o `Caption`.

---

## 🔧 Tecnologias
- Delphi RAD Studio 12
- VCL
- TDBGrid
- TPopupMenu

---

## 🚀 Como funciona
1. O evento `OnTitleClick` do `TDBGrid` é usado para detectar qual coluna foi clicada.
2. Um `TPopupMenu` é exibido na posição do mouse.
3. Ao selecionar uma opção, o título da coluna (`Title.Caption`) é atualizado automaticamente.