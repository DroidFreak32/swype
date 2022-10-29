.class Lcom/nuance/sns/GmailActivity$3;
.super Ljava/lang/Object;
.source "GmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/GmailActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/sns/GmailActivity;


# direct methods
.method constructor <init>(Lcom/nuance/sns/GmailActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    iget-object v2, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-virtual {v2}, Lcom/nuance/sns/GmailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    # getter for: Lcom/nuance/sns/GmailActivity;->gmailAccount:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/sns/GmailActivity;->access$500(Lcom/nuance/sns/GmailActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "oauth2:https://www.googleapis.com/auth/gmail.readonly"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/nuance/sns/GmailActivity;->idToken:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/sns/GmailActivity;->access$402(Lcom/nuance/sns/GmailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    # getter for: Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/sns/GmailActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Token: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    # getter for: Lcom/nuance/sns/GmailActivity;->idToken:Ljava/lang/String;
    invoke-static {v5}, Lcom/nuance/sns/GmailActivity;->access$400(Lcom/nuance/sns/GmailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    # getter for: Lcom/nuance/sns/GmailActivity;->idToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/sns/GmailActivity;->access$400(Lcom/nuance/sns/GmailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 196
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    new-instance v2, Lcom/nuance/sns/GmailActivity$3$1;

    invoke-direct {v2, p0}, Lcom/nuance/sns/GmailActivity$3$1;-><init>(Lcom/nuance/sns/GmailActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/nuance/sns/GmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_4e
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_4d} :catch_60

    .line 222
    :cond_4d
    :goto_4d
    return-void

    .line 205
    :catch_4e
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/sns/GmailActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    invoke-virtual {v1}, Lcom/nuance/sns/GmailActivity;->closing()V

    goto :goto_4d

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catch_60
    move-exception v0

    .line 209
    .local v0, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    # getter for: Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/sns/GmailActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GoogleAuthException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 211
    :try_start_7c
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v2, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    # getter for: Lcom/nuance/sns/GmailActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v2}, Lcom/nuance/sns/GmailActivity;->access$700(Lcom/nuance/sns/GmailActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_87} :catch_92
    .catchall {:try_start_7c .. :try_end_87} :catchall_b9

    .line 215
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    new-instance v2, Lcom/nuance/sns/GmailActivity$3$2;

    invoke-direct {v2, p0}, Lcom/nuance/sns/GmailActivity$3$2;-><init>(Lcom/nuance/sns/GmailActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/nuance/sns/GmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4d

    .line 213
    :catch_92
    move-exception v1

    :try_start_93
    # getter for: Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/sns/GmailActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Runtime exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_93 .. :try_end_ae} :catchall_b9

    .line 215
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    new-instance v2, Lcom/nuance/sns/GmailActivity$3$2;

    invoke-direct {v2, p0}, Lcom/nuance/sns/GmailActivity$3$2;-><init>(Lcom/nuance/sns/GmailActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/nuance/sns/GmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4d

    :catchall_b9
    move-exception v1

    iget-object v2, p0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    new-instance v3, Lcom/nuance/sns/GmailActivity$3$2;

    invoke-direct {v3, p0}, Lcom/nuance/sns/GmailActivity$3$2;-><init>(Lcom/nuance/sns/GmailActivity$3;)V

    invoke-virtual {v2, v3}, Lcom/nuance/sns/GmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v1
.end method
