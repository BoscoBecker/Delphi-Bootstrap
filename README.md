# Delphi-Bootstrap

Componentes Criados (Pascal) baseado em conceito de Bootstrap https://getbootstrap.com/

Desde então desenvolvi alguns exemplos precisa ser lapidado a alterar os index das propertys,
no entanto estou meio sem tempo e aos poucos irei melhorando


# Alert


![image](https://user-images.githubusercontent.com/6303278/163459518-98e28119-129e-4d78-993b-665b4b4d4b85.png)

Pascal Code

```
  // Bord Rounded
  Alert9.MakeRounded(Alert9);

  // Change the Style Here
  Alert9.StyleAlert := TStyle.Danger;

  // Change Text Alert
  Alert9.TextAlert := 'Delphi Bootstrap';
```
# Live alert

![image](https://user-images.githubusercontent.com/6303278/163460163-b5eb5657-1570-4c39-8583-1e10beb63090.png)
  
  Pascal Code
  ```
  LiveAlert1.MakeRounded(LiveAlert1);
  LiveAlert1.ShowALert:= True;
  ```
  
  # Badge
  
  ![image](https://user-images.githubusercontent.com/6303278/163460448-d7fa575c-5842-411d-9e65-12950cc27624.png)

Pascal Code
  ```
  Badge1.MakeRounded(Badge1);
  Badge1.MakeRounded(Badge1.Notification);
  Badge1.OnClick:= Badge1.OnButtonClick;
  ```
  
  # Positioned
  
  ![image](https://user-images.githubusercontent.com/6303278/163460603-5ca7aca7-5d36-49c3-a015-419defbfe04c.png)

Pascal Code
 ```
  BadgePositioneted1.MakeRounded(BadgePositioneted1.shape);
  BadgePositioneted1.MakeRounded(BadgePositioneted1.notifications);
  BadgePositioneted1.OnClick:= BadgePositioneted1.OnButtonClick;
 ```
    
# Card Title    
![image](https://user-images.githubusercontent.com/6303278/163460817-028f342a-93bd-48fe-99da-83aba405b45b.png)

Pascal Code
  ```  
  TCardTitle1.MakeRounded(TCardTitle1);
  TCardTitle1.MakeRounded(TCardTitle1.shapeInterno);
  TCardTitle1.MakeRounded(TCardTitle1.shape);
  TCardTitle1.MakeRounded(TCardTitle1.button);
  TCardTitle1.OnClick:= TCardTitle1.OnButtonClick;
  TCardTitle1.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'cocacola.jpg');
  ```
  
  Desenvolvido para VCL Feito em Delphi 10.3 Rio
  
  Para Instalar os componentes Basta abrir o Grupo de projeto: disponível em "src\Samples\ProjectGroup1.groupproj"
