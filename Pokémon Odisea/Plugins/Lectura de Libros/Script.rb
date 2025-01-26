###Script de Libro creado por Nyaruko###

#Instrucciones: Crear una constante (lo de los ejemplos LIBRO0 y LIBRO1, en Mayusculas)
#Y seguir el ejemplo de como están lo que serían las páginas, teniendo el límite 
#de 165 caracteres por página. Luego añadir esa constante a la lista de LIBROS.
#Para llamar al script tienes que poner en un evento BookScene.new.pbBook(x), siendo
#x la posición del libro que se quiera mostrar, teniendo en cuenta que la
#posicion 1 es 0. Por ejemplo para leer el primer libro se tendría que
#poner BookScene.new.pbBook(0)


#165 caracteres de media
LIBRO0 = [
_INTL("LIBRO ARGÉNTEO"),
_INTL("En algún lugar recóndito de la Luna, vive un ser mitológico llamado Lunaris. Este ser posee una fuerza inigualable, capaz de vencer al mismísimo Dios Pokémon."),
_INTL("Sin embargo, este Pokémon se encuentra sumido en un profundo letargo. Para su despertar, se necesitan las Energilunas repartidas por toda la región de Odisea."),
_INTL("Estas Energilunas deberán colocarse en el Altar de Vetustia, sólo así Lunaris despertará y conseguirá su verdadera forma."),
_INTL("No obstante, Lunaris sólo obedecerá a quien porte la Estrella Legendaria."),
_INTL("La E..r...a L....da... s. e..u...ra e. .. c..a r..l ... R..no .h......n . .. i.. p....o .. g....ac..n .n .en....i..."),
]

LIBRO1 = [
_INTL("LIBRO DE EJEMPLO 2"),
_INTL("Página 1"),
_INTL("Página 2"),
_INTL("Página 3"),
_INTL("Página 4"),
_INTL("Página 5"),
]


LIBROS = [LIBRO0, LIBRO1] # PONER AQUÍ MÁS LIBROS SEGÚN LOS CREES

class BookScene
  def pbBook(id)
    viewport=Viewport.new(0,0,Graphics.width,Graphics.height)
    viewport.z=99998
    #256 x 286
    #116x58
    @pagev=Viewport.new(116,58,256,286)
    @pagev.z = 99999
    @bitpage=BitmapSprite.new(256,286,@pagev)
    @libros = LIBROS
    @libro = @libros[id]
    select = 0
    @page = 0
    @sprites = {}
    @sprites["libro"]=IconSprite.new(0,0,viewport)
    @sprites["libro"].setBitmap("Graphics/Pictures/Book/0")
    @sprites["libro"].x =0
    @sprites["libro"].y =0
    loop do
      texto
      Graphics.update
      Input.update     
      if Input.trigger?(Input::BACK)
          pbSEPlay("select")
          pbFadeOutAndHide(@sprites){pbUpdateSpriteHash(@sprites)}
          viewport.dispose if viewport
          @pagev.dispose
          break
        end
        if Input.trigger?(Input::RIGHT) && @page < @libro.size - 1
          @pagev.visible = false
          pbSEPlay("select")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/1")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/2")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/3")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/4")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/5")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/6")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/7")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/8")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/9")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/10")
          pbWait(0.1)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/0")
          @page += 1
          @pagev.visible = true
        end
        if Input.trigger?(Input::LEFT) && @page > 0
          pbSEPlay("select")
          @pagev.visible = false
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/10")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/9")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/8")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/7")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/6")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/5")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/4")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/3")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/2")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/1")
          pbWait(2)
          @sprites["libro"].setBitmap("Graphics/Pictures/Book/0")
          @page -= 1
          @pagev.visible = true
        end 
      end
  end
  
  def texto
    pbSetSystemFont(@bitpage.bitmap)
    overlay = @bitpage.bitmap
    overlay.clear
    drawTextEx(@bitpage.bitmap,0,10,256,10,@libro[@page],Color.new(40,40,40),Color.new(120,120,120)) 
  end
end  