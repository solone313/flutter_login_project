# login

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
***
## login 프로젝트 개발계획
bloc 사이트의 flutter login project 정리 => spring boot jwt 토큰 반환 rest api 구현 => flutter login project와 spring boot 연결

***
### flutter login project

* User Repository

사용자 정보를 인증하고 검색하는 방법에 대한 기본적인 구현을 추상화하는 user_repository 구현. 

* Authentication States

1. 초기화되지 않음 - 앱 시작 시 사용자의 인증 여부 확인 대기 중
2. 로딩 - 토큰 유지/삭제 대기 중
3. 인증됨 - 성공적으로 인증됨
4. 인증되지 않음 - 인증되지 않음

위 네개의 인증 상태를 나타내는 상태 클래스를 구현한다.

여기서 equatable 패키지는 두 상태의 인스턴스를 비교하기 위해 사용된다.

* Authentication Events

AuthenticationState가 정의되었으므로 AuthenticationBloc가 응답할 AuthenticationEvents를 다음과 같이 정의해야 한다.

1. an AppStarted : 사용자가 현재 인증을 받았는지 여부를 확인해야 한다는 것을 블록에 알리기 위한 이벤트.
2. a LoggedIn : 사용자가 성공적으로 로그인했음을 블록에 알리는 이벤트.
3. a LoggedOut : 사람사용자가 성공적으로 로그아웃했음을 블록에 알리기 위한 이벤트.

여기서 @requried를 사용하기 위한 meta 패키지 사용.

* Authentication Bloc

AuthenticationState 및 AuthenticationEvents가 정의되었으므로 AuthenticationBloc을 구현하여 AuthenticationEvents에 대응하여 사용자의 AuthenticationState 확인 및 업데이트를 관리할 수 있다.

* splash page

먼저 AuthenticationBloc에서 사용자의 로그인 여부를 결정하는 동안 SplashPage 위젯이 우리의 Splash 화면 역할을 할 것이다.

* home page

다음으로, 우리는 홈페이지를 만들어 사용자가 로그인한 후에 그 곳을 탐색할 수 있도록 해야 할 것이다.


***

### spring boot rest api