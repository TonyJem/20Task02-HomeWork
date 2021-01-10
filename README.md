# iOS App «myImageCollections»
Assignment for Modul #20 in iOS development cource by [SkilFactory](https://skillfactory.ru)

[Task description](#task-description)

[Acceptance criteria](#acceptance-criteria)

##  Task description:

<img src="/readMeImages/screen01.png" width="25%">
<br>
Используя предыдущее задание в качестве «опоры», дополните его. Создайте аналогичную коллекцию под существующей и выведите в ней смайлики.

P.S. Небольшая подсказка вначале — чтобы сравнить коллекции, используйте: if collectionView == collectionViewOne.

##  Acceptance criteria:

1. Есть ссылка collectionViewTwo: 
@IBOutlet weak var collectionViewTwo: UICollectionView!
- выполнено — 1 балл
- не выполнено — 0 баллов

2. Есть идентификатор для новой ячейки CellTwo: 
- выполнено — 1 балл
- не выполнено — 0 баллов

3.Новая коллекция находится в стеке под предыдущей: 
- выполнено — 2 балла
- не выполнено — 1 балл

4. Есть ссылка на изображение с именем smileImage:
@IBOutlet weak var smileImage: UIImageView!
- выполнено — 2 балла
- не выполнено — 1 балл

5. Написан метод с именем setSmileImage(): 
func setSmileImage(smileName: String) {}
- выполнено — 1 балл
- не выполнено — 0 баллов

6. В методе setSmileImage() строка преобразована в UIImage и присвоена ImageView (реализовано присвоение данных):
smileImage.image = UIImage(named: smileName)
- выполнено — 1 балл
- не выполнено — 0 баллов

7. Подключен делегат для collectionViewTwo:
collectionViewTwo.delegate = self
- выполнено — 1 балл
- не выполнено — 0 баллов

8. Подключен датасорс для collectionViewTwo:
collectionViewTwo.dataSource = self
- выполнено — 1 балл
- не выполнено — 0 баллов

9. Есть проверка сравнения коллекций collectionViewTwo в методе collectionView(_:, didSelectItemAt indexPath:): 
if collectionView == collectionViewTwo{}
- выполнено — 1 балл
- не выполнено — 0 баллов

10. Реализовано присвоение данных в проверке if collectionView == collectionViewTwo{}:
currentSelectedImage = arraySmiles[indexPath.row]
- выполнено — 1 балл
- не выполнено — 0 баллов

11. Есть проверка сравнения коллекций collectionViewTwo в методе collectionView(:, numberOfItemsInSection:) -> Int: 
if collectionView == collectionViewTwo {}
- выполнено — 1 балл
- не выполнено — 0 баллов

12. Возвращается общее значение всех элементов правильного массива (arraySmiles):
return arraySmiles.count 
- выполнено — 2 балла
- не выполнено — 1 балл

13. Есть проверка сравнения коллекций collectionViewTwo в методе collectionView(:cellForItemAt:) -> UICollectionViewCell: 
if collectionView == collectionViewTwo {}
- выполнено — 1 балл
- не выполнено — 0 баллов

14. Реализовано безопасное переиспользование ячейки по идентификатору CellTwo:
if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
- выполнено — 2 балла
- не выполнено — 1 балл

15. Получаются верные данные из верного массива по индексу (arraySmiles)
let smileImage = arraySmiles[indexPath.row]
- выполнено — 2 балла
- не выполнено — 1 балл

16. Используется метод setSmileImage, в него передаются изображения из массива arraySmiles:  
cell.setSmileImage(smileName: smileImage)
- выполнено — 2 балла
- не выполнено — 1 балл

Итого максимум 22 балла.
