# Are you Read'y?
<img src="https://user-images.githubusercontent.com/109054102/202386263-92b71e94-61fb-4355-bb4b-67668612beb8.png">  

## 1. 프로젝트 소개 :closed_book:  
 Read'y 프로젝트는 도서를 구매하기 위해 내 성향에 맞는 도서를 추천해주어 보다 쉽게 도서를 선택 할 수 있는 '도서 판매 쇼핑몰'입니다.  
또한 커뮤니티 게시판을 통해 회원들간 도서에 관한 정보를 공유 할 수 있습니다.
## 2. CheckMate 조원 :green_book:

♚**강태현**
> 마이페이지  
> 설문조사 기반 도서추천  
> 공공데이터 파싱후 데이터 DB저장  

♞**고형진**
> 회원기능  
> 관리자 기능  
> 예외 처리

♜**김석진**
> 커뮤니티  
> 고객센터  

♟**양우석**
> 장바구니 기능  
> 구매 및 환불 기능  

## 3. 개발기간 :calendar:
*2022.10.14 ~ 2202.11.17*

## 4. 주요기능 :blue_book:  
**회원기능**
> Spring Security 적용
> 로그인 및 회원가입  
> OAuth2 기반 소셜로그인(구글, 네이버, 카카오)  
> 회원정보 수정 및 탈퇴  
> 구매한 도서 내역  
> 내가 작성한 후기  
> 내가 쓴 게시글  
> Spring Security 기능을 이용한 회원 권한 별 페이지 접근 제한  

**도서추천**  
> 성향파악을 위한 설문조사 등록  
> 설문조사 기반 도서 추천  
> 설문조사 미등록시 베스트셀러 추천  

**도서 정보**
> 오픈 API기반 도서정보 등록  
> 카테고리별 도서 목록  
>  도서별 후기 및 별점 작성  

**도서 구매**  
> 도서 개별 구매  
> 관심있는 품목 장바구니 담기  
> 장바구니에 담긴 품목들 구매  
> 오픈API를 이용한 결제 기능  
> 결제한 품목 환불 기능  
> 마일리지 기능  
> 회원등급별 할인율 적용  

**커뮤니티 게시판**  
> 게시글 등록, 수정, 삭제  
> 부적절한 게시글 신고  
> 게시글 추천  
> 해당 게시글 댓글 기능  

**고객센터**  
> 1 : 1 문의글 등록 및 답변  
> 관리자 FAQ등록  

**관리자 관련**  
> 공지사항 등록 및 조회, 수정  
> 메인페이지의 배너등록 및 삭제  
> 사용자가 신고한 게시글 관리 및 회원 제재
> 등록된 도서 수정 및 삭제  
> @ControllerAdvice 를 통한  예외처리

## 5. 기술 스택 :orange_book:
<img src="https://img.shields.io/badge/Java-F80000?style=flat&logo=Java&logoColor=white"> <img src="https://img.shields.io/badge/spring-6DB33F?style=flat&logo=Spring&logoColor=white"> <img src="https://img.shields.io/badge/Spring Security-6DB33F?style=flat&logo=Spring Security&logoColor=white"> <img src="https://img.shields.io/badge/html5-E34F26?style=flat&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white"> <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white"> <img src="https://img.shields.io/badge/Oracle-F80000?style=flat&logo=Oracle&logoColor=white"> <img src="https://img.shields.io/badge/Mybatis-000000?style=flat&logo=MyBatis&logoColor=white"> <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat&logo=jQuery&logoColor=white"> <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat&logo=Bootstrap&logoColor=white">

## 6. 개발 환경 :toolbox: 
<img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=flat&logo=Eclipse IDE&logoColor=white"> <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white"> <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat&logo=Visual Studio Code&logoColor=white"> <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=flat&logo=apachetomcat&logoColor=black"> <img src="https://img.shields.io/badge/Apache Maven-C71A36?style=flat&logo=Apache Maven&logoColor=white">

## 7. Read'y 화면 :books:  

<details>
<summary>회원 페이지</summary>

[메인페이지](#메인페이지)  
[로그인 페이지](#로그인-페이지)  
[아이디 찾기](#아이디-찾기)  
[비밀번호 찾기](#비밀번호-찾기)  
[일반 회원가입](#일반-회원가입)  
[소셜 회원가입](#소셜-회원가입)  
[마이페이지](#마이페이지)  
[설문조사 확인](#설문조사-확인)  
[설문조사 작성](#설문조사-작성)  
[회원정보 수정](#회원정보-수정)  
[회원탈퇴](#회원탈퇴)  
[내가 쓴 게시글](#내가-쓴-게시글)  
[나의 주문내역](#나의-주문내역)  
[나의 후기](#나의-후기) 

</details>

<details>
<summary>관리자 페이지</summary>

[관리자 페이지 - 메인](#관리자-페이지---메인)  
[관리자 페이지 - 배너 관리](#관리자-페이지---배너-관리)  
[관리자 페이지 - 공지사항 관리](#관리자-페이지---공지사항-관리)  
[관리자 페이지 - 공지사항 작성](#관리자-페이지---공지사항-작성)  
[관리자 페이지 - 공지사항 상세](#관리자-페이지---공지사항-상세)  
[관리자 페이지 - 공지사항 수정](#관리자-페이지---공지사항-수정)  
[관리자 페이지 - 상품관리 메인](#관리자-페이지---상품관리-메인)  
[관리자 페이지 - 상품 수정](#관리자-페이지---상품-수정)  
[관리자 페이지 - 신고 관리](#관리자-페이지---신고-관리)  
[관리자 페이지 - 신고된 게시글 상세](#관리자-페이지---신고된-게시글-상세)  
[관리자 페이지 - 판결 페이지](#관리자-페이지---판결-페이지)  
[관리자 페이지 - FAQ 관리](#관리자-페이지---faq-관리)  
[관리자 페이지 - FAQ 등록](#관리자-페이지---faq-등록)  

</details>

<details>
<summary>고객센터 페이지</summary>

[고객센터 - FAQ 메인](#고객센터---faq-메인)  
[고객센터 - 내 문의글 목록](#고객센터---내-문의글-목록)  
[고객센터 - 1대1 문의](#고객센터---1대1-문의)  
[고객센터 - 1대1 문의 상세_답변 전](#고객센터---1대1-문의-상세_답변-전)  
[고객센터 - 1대1 문의 상세_답변 후](#고객센터---1대1-문의-상세_답변-후)  

</details>

<details>

<summary>커뮤니티 페이지</summary>

[커뮤니티 - 메인](#커뮤니티---메인)  
[커뮤니티 - 게시글 작성](#커뮤니티---게시글-작성)  
[커뮤니티 - 게시글 수정](#커뮤니티---게시글-수정)  
[커뮤니티 - 게시글 상세](#커뮤니티---게시글-상세)  

</details>

<details>
 
<summary>메인 페이지</summary>

[메인 - 도서 상세](#메인---도서-상세)  
[메인 - 도서 검색](#메인---도서-검색)  
[메인 - 장바구니_담기 전](#메인---장바구니_담기-전)  
[메인 - 장바구니_담기 후](#메인---장바구니_담기-후)  
[메인 - 주문서 작성](#메인---주문서-작성)  
[메인 - 주문 완료](#메인---주문-완료)  

</details>


 

### **메인페이지**
<img src="https://user-images.githubusercontent.com/109054093/202394133-f65520d5-d781-4fa1-bdb5-fdf2a5926c7d.png">
<img src="https://user-images.githubusercontent.com/109054093/202389470-122f9dbd-69ff-4a79-9861-fb40f1cdd7fb.png">

### **로그인 페이지**
<img src="https://user-images.githubusercontent.com/109054093/202389470-122f9dbd-69ff-4a79-9861-fb40f1cdd7fb.png">  

### **아이디 찾기**
<img src="https://user-images.githubusercontent.com/109054093/202389674-4054ff26-a19c-4469-8238-ecd1fb9f3b0b.png">

### **비밀번호 찾기**
<img src="https://user-images.githubusercontent.com/109054093/202389741-8918af07-852a-4a3b-9172-3f5bb876dae0.png">

### **일반 회원가입**
<img src="https://user-images.githubusercontent.com/109054093/202389838-dfcef510-6283-470f-a68c-0845812c2238.png">

### **소셜 회원가입**
<img src="https://user-images.githubusercontent.com/109054093/202389905-d45b37c7-fd24-4a74-826b-64483b47903e.png">

### **관리자 페이지 - 메인**
<img src="https://user-images.githubusercontent.com/109054093/202390000-54711993-2cef-4881-bb59-3b8cff6955f7.png">

### **관리자 페이지 - 배너 관리**
<img src="https://user-images.githubusercontent.com/109054093/202390078-51aaa3d6-0dc7-4511-8f28-cbc93831dbd2.png">

### **관리자 페이지 - 공지사항 관리**
<img src="https://user-images.githubusercontent.com/109054093/202390205-99a0e291-8362-4782-bef1-909ceeac5d28.png">

### **관리자 페이지 - 공지사항 작성**
<img src="https://user-images.githubusercontent.com/109054093/202390844-9e229bf0-02d1-4bb7-b081-5971fa61b406.png">

### **관리자 페이지 - 공지사항 상세**
<img src="https://user-images.githubusercontent.com/109054093/202390938-bf0c2b2f-d8f7-4923-8304-303661cc7a59.png">

### **관리자 페이지 - 공지사항 수정**
<img src="https://user-images.githubusercontent.com/109054093/202391011-e115742d-060c-4e3d-bbe0-d3ce83671918.png">

### **관리자 페이지 - 상품관리 메인**
<img src="https://user-images.githubusercontent.com/109054093/202391230-81a8c9e5-5943-4233-82d6-32ed5e741d54.png">

### **관리자 페이지 - 상품 수정**
<img src="https://user-images.githubusercontent.com/109054093/202391294-50f170c7-3ee4-4305-b68e-5afd32c2334a.png">

### **관리자 페이지 - 신고 관리**
<img src="https://user-images.githubusercontent.com/109054093/202391407-4563500b-6b13-4b51-b5b8-a5d2a09a8c68.png">

### **관리자 페이지 - 신고된 게시글 상세**
<img src="https://user-images.githubusercontent.com/109054093/202391476-366c7719-4ed9-49c0-9d50-e56242133532.png">

### **관리자 페이지 - 판결 페이지**
<img src="https://user-images.githubusercontent.com/109054093/202391572-4ac57bd5-6af5-4506-b4a3-c723ae572725.png">

### **관리자 페이지 - FAQ 관리**
<img src="https://user-images.githubusercontent.com/109054093/202391709-b85fec69-08b0-4c6f-9da1-4d763167e6be.png">

### **관리자 페이지 - FAQ 등록**
<img src="https://user-images.githubusercontent.com/109054093/202391896-6b1bd7d5-9763-41e9-93e5-f562e6dd5139.png">

### **고객센터 - FAQ 메인**
<img src="https://user-images.githubusercontent.com/109054093/202392268-69e8f3ff-5581-4bd8-bca3-33083adfc858.png">

### **고객센터 - 내 문의글 목록**
<img src="https://user-images.githubusercontent.com/109054093/202392393-419cd2d4-f23d-4a89-8abe-0ce65199b6a2.png">

### **고객센터 - 1대1 문의**
<img src="https://user-images.githubusercontent.com/109054093/202392479-61883876-8a88-4b55-9b96-309d76cee260.png">

### **고객센터 - 1대1 문의 상세_답변 전**
<img src="https://user-images.githubusercontent.com/109054093/202392550-51d768ce-503c-4cb0-b278-50c16a06f176.png">

### **고객센터 - 1대1 문의 상세_답변 후**
<img src="https://user-images.githubusercontent.com/109054093/202392604-c468410b-b14d-4ebb-a98b-b51c7f9748a6.png">

### **커뮤니티 - 메인**
<img src="https://user-images.githubusercontent.com/109054093/202392694-e2f16b75-e1a5-4686-9c71-b7fd7ecd8215.png">

### **커뮤니티 - 게시글 작성**
<img src="https://user-images.githubusercontent.com/109054093/202392751-b25e760d-fafa-4b7b-98d0-c968e5f9b7cc.png">

### **커뮤니티 - 게시글 수정**
<img src="https://user-images.githubusercontent.com/109054093/202392792-91a476c1-cac3-42b1-b673-e7232fa1965e.png">

### **커뮤니티 - 게시글 상세**
<img src="https://user-images.githubusercontent.com/109054093/202392882-01d32bfb-95f0-4849-b761-62cb3ed2cc0c.png">

### **메인 - 도서 상세**
<img src="https://user-images.githubusercontent.com/109054093/202393057-8a31e6aa-3853-40d0-bf75-c0e1b81c39e4.png">

### **메인 - 도서 검색**
<img src="https://user-images.githubusercontent.com/109054093/202393107-a970fb76-a33b-4ca1-bf3a-f34fbfde3d6c.png">

### **메인 - 장바구니_담기 전**
<img src="https://user-images.githubusercontent.com/109054093/202393202-1129b344-760f-47c8-a363-66a644ca4a19.png">

### **메인 - 장바구니_담기 후**
<img src="https://user-images.githubusercontent.com/109054093/202393236-c1384e88-2696-4938-a2de-38b4b96fb2ae.png">

### **메인 - 주문서 작성**
<img src="https://user-images.githubusercontent.com/109054093/202393326-3c4a7c7a-2b57-48d1-b874-f2c24bc08c6f.png">

### **메인 - 주문 완료**
<img src="https://user-images.githubusercontent.com/109054093/202393368-5d078b99-996c-4386-a7e7-cfb906c159bb.png">

### **마이페이지**
<img src="https://user-images.githubusercontent.com/109054093/202393497-0a671cbb-545e-4c67-858f-5de5c822f72f.png">

### **설문조사 확인**
<img src="https://user-images.githubusercontent.com/109054093/202393579-1ff2c938-20bd-43bc-a6fa-d6b71729fdfd.png">

### **설문조사 작성**
<img src="https://user-images.githubusercontent.com/109054093/202393643-dccee705-c4aa-4bbd-8b05-4978e6e9f547.png">

### **회원정보 수정**
<img src="https://user-images.githubusercontent.com/109054093/202393713-6469f099-b1b0-492b-9dd1-ecf0bdc0223b.png">

### **회원탈퇴**
<img src="https://user-images.githubusercontent.com/109054093/202393755-4f87e6ce-37c0-4892-bb54-bf6aa9109d6d.png">

### **내가 쓴 게시글**
<img src="https://user-images.githubusercontent.com/109054093/202393864-5f2bee7f-b899-4183-a977-0effcdc32857.png">

### **나의 주문내역**
<img src="https://user-images.githubusercontent.com/109054093/202393948-df3f9eba-b23c-4d47-a316-bc066701ad30.png">

### **나의 후기**
<img src="https://user-images.githubusercontent.com/109054093/202394009-45d290ff-dd18-4708-9489-174ac98ca7f4.png">

### **장바구니 결제 시연영상 **
https://www.youtube.com/watch?v=Qh8LwwUh2FY
