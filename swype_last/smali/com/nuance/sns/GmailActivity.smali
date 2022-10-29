.class public Lcom/nuance/sns/GmailActivity;
.super Lcom/nuance/sns/SocialNetworkActivity;
.source "GmailActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final RC_SIGN_IN:I = 0x0

.field private static final REQUEST_GOOGLE_PLAY_SERVICES:I = 0x64

.field private static final STATE_SIGNING_IN:Ljava/lang/String; = "signing_in"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private gmailAccount:Ljava/lang/String;

.field private idToken:Ljava/lang/String;

.field private isGoogleServiceAvailable:Z

.field private isSigningIn:Z

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string/jumbo v0, "GmailActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;-><init>()V

    .line 46
    iput v0, p0, Lcom/nuance/sns/GmailActivity;->retryCount:I

    .line 47
    iput-boolean v0, p0, Lcom/nuance/sns/GmailActivity;->isSigningIn:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/sns/GmailActivity;->isGoogleServiceAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/sns/GmailActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/nuance/sns/GmailActivity;->retryCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/nuance/sns/GmailActivity;)I
    .registers 3
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/nuance/sns/GmailActivity;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/sns/GmailActivity;->retryCount:I

    return v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/sns/GmailActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/sns/GmailActivity;->signIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/sns/GmailActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;
    .param p1, "x1"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nuance/sns/GmailActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/sns/GmailActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/sns/GmailActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nuance/sns/GmailActivity;->idToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/sns/GmailActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity;->gmailAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/sns/GmailActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/sns/GmailActivity;->initScanner()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/sns/GmailActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/GmailActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private checkSignIn()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 98
    iput v5, p0, Lcom/nuance/sns/GmailActivity;->retryCount:I

    .line 99
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v3, p0, Lcom/nuance/sns/GmailActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 100
    invoke-interface {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    .line 101
    .local v0, "opr":Lcom/google/android/gms/common/api/OptionalPendingResult;, "Lcom/google/android/gms/common/api/OptionalPendingResult<Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;>;"
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->isDone()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 102
    sget-object v2, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Got cached sign-in"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .line 104
    .local v1, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    invoke-direct {p0, v1}, Lcom/nuance/sns/GmailActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    .line 125
    .end local v1    # "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    :goto_27
    return-void

    .line 106
    :cond_28
    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->showSpinner()V

    .line 107
    new-instance v2, Lcom/nuance/sns/GmailActivity$2;

    invoke-direct {v2, p0}, Lcom/nuance/sns/GmailActivity$2;-><init>(Lcom/nuance/sns/GmailActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/OptionalPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_27
.end method

.method private handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .registers 9
    .param p1, "result"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    if-nez p1, :cond_5

    .line 230
    :cond_4
    :goto_4
    return-void

    .line 178
    :cond_5
    sget-object v1, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleSignInResult:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5000
    iget-object v4, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->bY:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6000
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->bY:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    .line 179
    if-eqz v1, :cond_63

    .line 7000
    iget-object v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->dU:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 182
    .local v0, "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_61

    .line 8000
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->dB:Ljava/lang/String;

    .line 182
    :goto_32
    iput-object v1, p0, Lcom/nuance/sns/GmailActivity;->gmailAccount:Ljava/lang/String;

    .line 183
    sget-object v1, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmailAccount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/sns/GmailActivity;->gmailAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->gmailAccount:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 186
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/sns/GmailActivity$3;

    invoke-direct {v2, p0}, Lcom/nuance/sns/GmailActivity$3;-><init>(Lcom/nuance/sns/GmailActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 182
    :cond_61
    const/4 v1, 0x0

    goto :goto_32

    .line 227
    .end local v0    # "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_63
    sget-object v1, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Sign in failed"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->closing()V

    goto :goto_4
.end method

.method private initScanner()V
    .registers 6

    .prologue
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getGmailStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/sns/GmailActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 152
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    if-eqz v1, :cond_60

    .line 154
    :try_start_16
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nuance/sns/GmailActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->GMAIL2:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    .line 155
    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    .line 156
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 157
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;)V

    .line 160
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->setScanContentType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)V

    .line 163
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->setMaxToProcess(I)V
    :try_end_60
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_16 .. :try_end_60} :catch_61

    .line 172
    :cond_60
    :goto_60
    return-void

    .line 165
    :catch_61
    move-exception v0

    .line 166
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/GmailActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->closing()V

    goto :goto_60
.end method

.method private signIn()V
    .registers 4

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/nuance/sns/GmailActivity;->isSigningIn:Z

    if-nez v1, :cond_13

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/sns/GmailActivity;->isSigningIn:Z

    .line 132
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v2, p0, Lcom/nuance/sns/GmailActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "signInIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/sns/GmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    .end local v0    # "signInIntent":Landroid/content/Intent;
    :cond_13
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/sns/SocialNetworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    iput-boolean v4, p0, Lcom/nuance/sns/GmailActivity;->isSigningIn:Z

    .line 142
    if-nez p1, :cond_1e

    .line 143
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    .line 144
    .local v0, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    sget-object v1, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onActivityResult()..."

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0, v0}, Lcom/nuance/sns/GmailActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    .line 147
    .end local v0    # "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    :cond_1e
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 235
    sget-object v2, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onConnectionFailed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 9000
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 239
    .local v1, "errorCode":I
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog$2675af88(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 242
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/nuance/sns/GmailActivity$4;

    invoke-direct {v2, p0}, Lcom/nuance/sns/GmailActivity$4;-><init>(Lcom/nuance/sns/GmailActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 56
    .local v2, "status":I
    if-eqz v2, :cond_31

    .line 57
    iput-boolean v4, p0, Lcom/nuance/sns/GmailActivity;->isGoogleServiceAvailable:Z

    .line 58
    sget-object v3, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Google play service is unavailable!"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog$2675af88(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 64
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/nuance/sns/GmailActivity$1;

    invoke-direct {v3, p0}, Lcom/nuance/sns/GmailActivity$1;-><init>(Lcom/nuance/sns/GmailActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 86
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_30
    return-void

    .line 74
    :cond_31
    sget v5, Lcom/nuance/swype/input/R$layout;->activity_dummy:I

    invoke-virtual {p0, v5}, Lcom/nuance/sns/GmailActivity;->setContentView(I)V

    .line 75
    new-instance v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v5, v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 1000
    iget-object v6, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->dT:Ljava/util/Set;

    sget-object v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->dL:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v6, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v7, "https://www.googleapis.com/auth/gmail.readonly"

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v7, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    .line 80
    .local v1, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    new-instance v5, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v5, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 3000
    new-instance v6, Lcom/google/android/gms/internal/zzqi;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/zzqi;-><init>(Landroid/app/Activity;)V

    .line 4000
    const-string/jumbo v7, "clientId must be non-negative"

    invoke-static {v3, v7}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iput v4, v5, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->sf:I

    iput-object p0, v5, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->sg:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iput-object v6, v5, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->se:Lcom/google/android/gms/internal/zzqi;

    .line 81
    sget-object v6, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 82
    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v5

    .line 83
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/sns/GmailActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 84
    if-eqz p1, :cond_86

    const-string/jumbo v5, "signing_in"

    .line 85
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_86

    :goto_83
    iput-boolean v3, p0, Lcom/nuance/sns/GmailActivity;->isSigningIn:Z

    goto :goto_30

    :cond_86
    move v3, v4

    goto :goto_83
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    const-string/jumbo v0, "signing_in"

    iget-boolean v1, p0, Lcom/nuance/sns/GmailActivity;->isSigningIn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->onStart()V

    .line 91
    iget-boolean v0, p0, Lcom/nuance/sns/GmailActivity;->isGoogleServiceAvailable:Z

    if-nez v0, :cond_8

    .line 95
    :goto_7
    return-void

    .line 94
    :cond_8
    invoke-direct {p0}, Lcom/nuance/sns/GmailActivity;->checkSignIn()V

    goto :goto_7
.end method

.method protected startScanningService()Z
    .registers 5

    .prologue
    .line 258
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->startScanningService()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 260
    :try_start_6
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    iget-object v2, p0, Lcom/nuance/sns/GmailActivity;->gmailAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/sns/GmailActivity;->idToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    new-instance v2, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;

    invoke-direct {v2, p0}, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    .line 262
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->recordUsingGmailScanner()V
    :try_end_28
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_6 .. :try_end_28} :catch_2a

    .line 263
    const/4 v1, 0x1

    .line 273
    :goto_29
    return v1

    .line 264
    :catch_2a
    move-exception v0

    .line 265
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/GmailActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACScannerException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 270
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    :cond_44
    iget-object v1, p0, Lcom/nuance/sns/GmailActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/GmailActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/nuance/sns/GmailActivity;->closing()V

    .line 273
    const/4 v1, 0x0

    goto :goto_29
.end method
