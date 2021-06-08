//i'm tryna mimmick the data

class Call {
  final String callerName;
  final String callerImg;
  final bool isVoice;
  final String callDuration;

  Call({this.callerName, this.callerImg, this.isVoice, this.callDuration});
}

Call firstCall = Call(
    callerName: "John Wick",
    callDuration: "15",
    callerImg: "images/john wick.jpeg",
    isVoice: true);
Call secondCall = Call(
    callerName: "Travis Scott",
    callDuration: "23",
    callerImg: "images/travis.jpeg",
    isVoice: false);
Call thirdCall = Call(
    callerName: "John Wick",
    callDuration: "30",
    callerImg: "images/john wick.jpeg",
    isVoice: false);
Call lastCall = Call(
    callerName: "Andrew Charles",
    callDuration: "20",
    callerImg: "images/male1.jpeg",
    isVoice: true);

List<Call> callLogs = [firstCall, secondCall, thirdCall, lastCall];
