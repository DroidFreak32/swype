.class Lcom/nuance/sns/GmailActivity$2;
.super Ljava/lang/Object;
.source "GmailActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/GmailActivity;->checkSignIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/sns/GmailActivity;


# direct methods
.method constructor <init>(Lcom/nuance/sns/GmailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 4
    .param p1, "googleSignInResult"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/GmailActivity;->dismissSpinner()V

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->bY:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-static {v0}, Lcom/nuance/sns/GmailActivity;->access$000(Lcom/nuance/sns/GmailActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/nuance/sns/GmailActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "slient login Failed... do signIn"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-static {v0}, Lcom/nuance/sns/GmailActivity;->access$008(Lcom/nuance/sns/GmailActivity;)I

    .line 115
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-static {v0}, Lcom/nuance/sns/GmailActivity;->access$200(Lcom/nuance/sns/GmailActivity;)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/GmailActivity;->closing()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$2;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-static {v0, p1}, Lcom/nuance/sns/GmailActivity;->access$300(Lcom/nuance/sns/GmailActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p0, p1}, Lcom/nuance/sns/GmailActivity$2;->onResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    return-void
.end method
