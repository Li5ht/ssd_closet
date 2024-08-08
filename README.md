# &closet

### 프로젝트 소개
- 프로젝트명: &closet
- 서비스 특징: 패션 상품 경매&공동구매 서비스
- 개발 기간: 2023. 04 ~ 2023. 06
- 진행 인원: FE 1, BE 2, Full-Stack 1
- 주요 기능
  - 상품 등록 및 판매/구매
  - 경매
  - 공동구매
  - 랭킹(인기순)

<br><br>

### Skills
<a href="https://www.java.com/ko/"><img src="https://img.shields.io/badge/Java-F58219?style=flat-square&logo=Java&logoColor=white"/></a><a href="https://spring.io/projects/spring-boot"><img src="https://img.shields.io/badge/SpringBoot-6AAE3D?style=flat-square&logo=SpringBoot&logoColor=white"/></a><a href="https://spring.io/projects/spring-data-jpa"><img src="https://img.shields.io/badge/Spring Data JPA-375582?style=flat-square&logo=&logoColor=white"/></a><a href="https://www.oracle.com/"><img src="https://img.shields.io/badge/Oracle-A374DB?style=flat-square&logo=Oracle&logoColor=white"/></a>

<br><br>

###  시연 영상
<a href="https://drive.google.com/file/d/13WBKlRj1sCNKJDXosgSLLDFhQ68vvCdS/view?usp=drive_link">![0e712668-5a29-4cbc-af81-be6bd3ddbf4a-ezgif com-crop](https://github.com/yerimm99/closet/assets/86309538/14158e5c-9da3-47ed-8520-f9a7bba75f37)</a> 
> 이미지 클릭 시 프로젝트 전체 시연 영상으로 이동 🏃‍♀️

<br><br>

### Architecture
![image](https://github.com/user-attachments/assets/e6c96b28-cae3-4572-af50-952292957430)

<br><br>

### Features
1. 회원 관리 (Membership Management)
- 회원가입 (Member Registration)
- 로그인/로그아웃 (Login/Logout)
- 회원 정보 조회 및 수정 (View and Edit Member Information)

2. 리뷰 서비스 (Review Service)
- 리뷰 작성 (Write Review)
- 리뷰 조회 (View Review)

3. 상품 조회 (Product Search)
- 검색 (Search)
- 좋아요 (Like)
- 수정/삭제 (Edit/Delete)
- 상품 정렬 (Product Sorting)

4. 상품 등록 및 판매/구매 (Product Registration and Sale/Purchase)
- 상품 등록 (Register Product)
- 상품 정보 수정 (Edit Product Information)
- 상품 삭제 (Delete Product)
- 판매 (Sell)
- 구매 (Purchase)

5. 경매 (Auction)
- 입찰 (Bid)
- 입찰가 수정 (Edit Bid)
- 입찰 취소 (Bid Cancellation)
- 낙찰 (Successful Bid) 

6. 공동구매 (Group Buying)
- 참가 신청 (Apply For Participation)
- 참가 취소 (Cancellation Of Participation)
- 모집 인원 충족/실패 (Recruitment Capacity Met/Failed)

7. 주문 (Order)
- 주문 (Order)
- 주문 조회 (Order Tracking)

8. 랭킹 (Ranking)
- 인기순 조회 (Ranked By Likes)

9. 보안 (Security)
- 권한 체크 (Permission Check)

<br><br>

### Backend

```
.
├── java
│   └── com
│       └── ssp
│           └── closet
│               ├── ClosetApplication.java
│               ├── WebMvcConfig.java
│               ├── client
│               │   └── rest
│               │       └── OrderServiceClient_rest.java
│               ├── controller
│               │   ├── AccountForm.java
│               │   ├── AccountFormController.java
│               │   ├── LikeController.java
│               │   ├── RankController.java
│               │   ├── ReviewController.java
│               │   ├── SearchProductsController.java
│               │   ├── SignoffController.java
│               │   ├── SignonController.java
│               │   ├── SignonInterceptor.java
│               │   ├── UserSession.java
│               │   ├── ViewMypageController.java
│               │   ├── auction
│               │   │   ├── AuctionForm.java
│               │   │   ├── AuctionFormController.java
│               │   │   ├── BidForm.java
│               │   │   ├── BidFormController.java
│               │   │   └── ViewAuctionController.java
│               │   ├── groupbuy
│               │   │   ├── GroupbuyForm.java
│               │   │   ├── GroupbuyFormController.java
│               │   │   ├── MeetController.java
│               │   │   └── ViewGroupbuyController.java
│               │   ├── order
│               │   │   ├── OrderForm.java
│               │   │   ├── OrderFormController.java
│               │   │   └── ViewOrderController.java
│               │   └── rest
│               │       └── RestOrderController.java
│               ├── dto
│               │   ├── Account.java
│               │   ├── Auction.java
│               │   ├── Bid.java
│               │   ├── BidId.java
│               │   ├── Delivery.java
│               │   ├── Groupbuy.java
│               │   ├── LikeMark.java
│               │   ├── Meet.java
│               │   ├── MeetId.java
│               │   ├── Product.java
│               │   └── Review.java
│               ├── repository
│               │   ├── AccountRepository.java
│               │   ├── AuctionRepository.java
│               │   ├── BidRepository.java
│               │   ├── DeliveryRepository.java
│               │   ├── GroupbuyRepository.java
│               │   ├── LikeMarkRepository.java
│               │   ├── MeetRepository.java
│               │   ├── ProductRepository.java
│               │   └── ReviewRepository.java
│               └── service
│                   ├── AccountFormValidator.java
│                   ├── AuctionFormValidator.java
│                   ├── ClosetFacade.java
│                   ├── ClosetImpl.java
│                   ├── GroupbuyFormValidator.java
│                   ├── OrderFormValidator.java
│                   └── client
│                       ├── OrderServiceClient_httpInvoker.java
│                       ├── OrderServiceClient_jaxws.java
│                       └── OrderServiceClient_rmi.java
├── resources
    ├── application.properties
    ├── application.yml
    ├── db
    │   ├── applicationContext.xml
    │   ├── dataAccessContext-mybatis.xml
    │   ├── jdbc.hsqldb.properties
    │   ├── jdbc.oracle.properties
    │   └── logback.xml
    ├── static
    │   └── upload
    │       ├── here.jpg
    │       ├── here2.jpg
    │       └── image.jpg
    └── user
        └── userContext.xml
```

### Frontend

```
webapp
    ├── META-INF
    │   ├── MANIFEST.MF
    │   └── maven
    │       └── com.example
    │           └── jpetstore
    │               ├── pom.properties
    │               └── pom.xml
    ├── WEB-INF
    │   ├── closet-servlet.xml
    │   └── jsp
    │       ├── account
    │       │   ├── SignonForm.jsp
    │       │   └── registerForm.jsp
    │       ├── auction
    │       │   ├── buyResultList.jsp
    │       │   ├── detail.jsp
    │       │   ├── list.jsp
    │       │   ├── registerForm.jsp
    │       │   └── sellResultList.jsp
    │       ├── bid
    │       │   └── bidForm.jsp
    │       ├── groupbuy
    │       │   ├── buyResultList.jsp
    │       │   ├── detail.jsp
    │       │   ├── list.jsp
    │       │   ├── registerForm.jsp
    │       │   └── sellResultList.jsp
    │       ├── index.jsp
    │       ├── like
    │       │   ├── auctionList.jsp
    │       │   └── groupbuyList.jsp
    │       ├── main
    │       │   ├── SearchProducts.jsp
    │       │   ├── auction.jsp
    │       │   ├── groupbuy.jsp
    │       │   ├── myPage.jsp
    │       │   ├── rank.jsp
    │       │   └── search.jsp
    │       ├── menu.jsp
    │       ├── order
    │       │   ├── detail.jsp
    │       │   ├── list.jsp
    │       │   └── registerForm.jsp
    │       ├── rank
    │       │   ├── auctionList.jsp
    │       │   └── groupbuyList.jsp
    │       └── review
    │           ├── listToMe.jsp
    │           └── registerForm.jsp
    ├── images
    └── upload

```

<br><br>

#### UI
<img width="1380" alt="스크린샷 2024-08-08 오후 8 54 35" src="https://github.com/user-attachments/assets/338f02ce-b568-4241-afcb-63b0f177d211">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 54 41" src="https://github.com/user-attachments/assets/385d13cb-cf2c-45f3-9e4c-2b7a4ce05e7a">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 03" src="https://github.com/user-attachments/assets/7a04ca86-2258-43c8-a6e8-93abb49c33a6">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 18" src="https://github.com/user-attachments/assets/069a4826-1f11-4fac-85fb-2ce178024c0f">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 11" src="https://github.com/user-attachments/assets/81934324-09f6-4dda-adb8-5f199118a677">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 31" src="https://github.com/user-attachments/assets/cb2815b4-9c4e-4db2-bd95-1c855c1d45cd">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 06" src="https://github.com/user-attachments/assets/e995ddcf-e32d-4276-b202-d75a61fc7535">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 00" src="https://github.com/user-attachments/assets/c854a1fa-6ac4-4bc8-b6e5-64088788b93c">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 53" src="https://github.com/user-attachments/assets/db971bd6-c762-47cb-87d9-4c1467964c3a">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 47" src="https://github.com/user-attachments/assets/c983a3ba-256b-499f-8ff8-7d0c111d3ec6">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 55 40" src="https://github.com/user-attachments/assets/1b080a3c-f4cd-46ca-bffa-097f7bb54c07">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 54" src="https://github.com/user-attachments/assets/e66851bb-0abe-4619-9667-0818b50db3ce">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 48" src="https://github.com/user-attachments/assets/0ce6be49-3214-4b6d-a72e-ef87f749e0ef">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 41" src="https://github.com/user-attachments/assets/120c3341-f8a3-447f-9a4c-29c1111a87f3">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 35" src="https://github.com/user-attachments/assets/99bb47a0-ce85-4793-b2b1-bcf26e0145dd">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 22" src="https://github.com/user-attachments/assets/9927638f-10ad-4d45-9f21-661d9325d7b7">
<img width="1380" alt="스크린샷 2024-08-08 오후 8 56 13" src="https://github.com/user-attachments/assets/8ba889d4-322d-4a92-98aa-c0492170690f">

<br><br>
