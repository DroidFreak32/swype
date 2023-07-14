.class public Lcom/crashlytics/android/answers/Answers;
.super Lcom/crashlytics/android/answers/AnswersKit;
.source "Answers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/crashlytics/android/answers/AnswersKit;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/answers/Answers;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/crashlytics/android/answers/AnswersKit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/crashlytics/android/answers/AnswersKit;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onException(Lio/fabric/sdk/android/services/common/Crash$FatalException;)V
    .locals 0
    .param p1, "x0"    # Lio/fabric/sdk/android/services/common/Crash$FatalException;

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/crashlytics/android/answers/AnswersKit;->onException(Lio/fabric/sdk/android/services/common/Crash$FatalException;)V

    return-void
.end method
