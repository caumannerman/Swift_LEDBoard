# Swift_LEDBoard

## Content View Controller & Container View Controller 

![IMG_3BACFE2CFEAA-1](https://user-images.githubusercontent.com/75043852/162869420-eaa424d3-11aa-4b07-9247-3f038a4df9e5.jpeg)

## Navigation ViewController 

Navigation Stack을 사용하여 자식 ViewController들을 관리한다.

## Navigation Bar 구조 

rootViewController를 제외한 모든 자식ViewController에 Back item이 있다. 
![IMG_65D90BFB8F69-1](https://user-images.githubusercontent.com/75043852/162869748-e25c5629-85f3-4211-b9de-ba3aa7df9e5b.jpeg)

## 화면 전환 방법 

![IMG_443FA1E1F92E-1](https://user-images.githubusercontent.com/75043852/162869921-be7110a6-3924-48d5-99c0-a2eab52390d2.jpeg)

### - 1.바꿔치기 방식은 메모리 누수의 위험이 있어 지양하는 방식이다.
### - 2. present함수를 사용하여 호출 
==> present와 dismiss를 사용하여 호출, 이전 화면으로 되돌아가기
- completion에는 호출 혹은 되돌아가기가 완료된 후 실행하고싶은 내용을 넣어줄 수 있다. ( 화면 전환이 완료된 후 호출됨)

![IMG_6F5144B630B4-1](https://user-images.githubusercontent.com/75043852/162870591-e8a97218-7d40-4048-b9ae-2d95302bfc5d.jpeg)


### - 3. Navigation Controller사용 
==> pushViewController, popViewController 메서드 사용
![IMG_E00398C8CBD3-1](https://user-images.githubusercontent.com/75043852/162870805-ecbd6ea0-ebb8-4970-9e1e-ef599367e21d.jpeg)

### - 4. 화면전환용 객체 SegueWay 사용하여 화면 전환 

SegueWay 객체는  StoryBoard 상의  화살표로 나타난다.

==> 코드 없이 storyboard만으로 설정 
==> Show, Show Detail, Present Modally, Present PopOver, Custom 총 5가지 방식 존재.
이들이 2,3번에 포함된다. Show가 NavigationController에 Push하는 방식이고, Present가 2번의 Present방식에 포함된다.

# 앱 구성 

설정에서  전광판에 표시할 글자와 색, 배경색을 지정할 수 있다.

<p>
<img width="300" alt="스크린샷 2022-04-12 오후 2 15 50" src="https://user-images.githubusercontent.com/75043852/162885929-8d50414e-185a-4036-b6df-3bd36d61c794.png">
<img width="300" alt="스크린샷 2022-04-12 오후 2 16 29" src="https://user-images.githubusercontent.com/75043852/162885937-ad61dc87-638d-4bae-9c06-f9be4bd99d8a.png">
<img width="300" alt="스크린샷 2022-04-12 오후 2 16 48" src="https://user-images.githubusercontent.com/75043852/162885945-4ec2516e-b23c-4c7a-a353-ade760f1c618.png">
</p>
전광판 하단의 "화면전환 예시보기" 버튼으로 들어가, Segueway, Code를 이용한 NavigationController로의 Push 그리고 Present 방식 예시를 구현하였다.
<img width="677" alt="스크린샷 2022-04-12 오후 2 15 00" src="https://user-images.githubusercontent.com/75043852/162885742-0126cf52-4679-4a50-abbf-da5d33154da1.png">

## 구현한 각 화면 전환에서, 간단한 String을 전달하여 Label에 표시하였고, popViewController()혹은 dismiss를 하여 돌아올 때, 새로운 String을 되돌려받아서 Label에 표시해보았다.

### 초기화면
<img width="200" alt="스크린샷 2022-04-12 오후 4 55 44" src="https://user-images.githubusercontent.com/75043852/162915733-d6ae0d80-29e6-48b0-8805-2926e4e1b5eb.png">

### 1. 코드로 Push클릭시 & popViewController 시, delegate와 protocol을 통해 popViewController과 함께 되돌려받은 String Label이 표현된 화면

<p>
<img width="200" alt="스크린샷 2022-04-12 오후 4 56 07" src="https://user-images.githubusercontent.com/75043852/162916412-56f69a60-6137-4927-b6fc-d15b4757162a.png">
<img width="200" alt="스크린샷 2022-04-12 오후 4 56 14" src="https://user-images.githubusercontent.com/75043852/162916424-c3c8b543-50df-4993-82e5-9c3e1522590b.png">

</p>

### 2. 코드로 Present클릭 시의 data전달 화면 & delegate와 protocol을 통해 dismiss와 함께 되돌려받은 String Label이 표현된 화면

<p>
<img width="200" alt="스크린샷 2022-04-12 오후 4 56 23" src="https://user-images.githubusercontent.com/75043852/162916385-fd4424bf-09d1-47df-af77-3d9a25c746c0.png">
<img width="200" alt="스크린샷 2022-04-12 오후 4 56 32" src="https://user-images.githubusercontent.com/75043852/162916401-9787bb4f-8e2a-4b82-9c48-ac9e433bc71d.png">


</p>

### 3. SegueWay로 Push  시의 data전달 화면 & delegate와 protocol을 통해 popViewController과 함께 되돌려받은 String Label이 표현된 화면

<p>
<img width="200" alt="스크린샷 2022-04-12 오후 4 58 31" src="https://user-images.githubusercontent.com/75043852/162916452-b02740ae-f15b-4b02-a3b5-dbc0cf8dacca.png">
<img width="200" alt="스크린샷 2022-04-12 오후 4 59 36" src="https://user-images.githubusercontent.com/75043852/162916461-66892ec1-3cbd-4dc7-b147-5435eab0fd19.png">

</p>

### 4. SegueWay로 Present클릭 시의 data전달 화면 & delegate와 protocol을 통해 dismiss와 함께 되돌려받은 String Label이 표현된 화면

<p>
<img width="200" alt="스크린샷 2022-04-12 오후 5 22 38" src="https://user-images.githubusercontent.com/75043852/162916510-a2779c85-73cb-4dfd-a7da-6dd3127e0224.png">
<img width="200" alt="스크린샷 2022-04-12 오후 5 22 30" src="https://user-images.githubusercontent.com/75043852/162916514-5a849d55-2017-439e-bd98-746187cd6495.png">

</p>

