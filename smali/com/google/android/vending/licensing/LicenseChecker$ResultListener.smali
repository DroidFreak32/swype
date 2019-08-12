.class final Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;
.super Lcom/google/android/vending/licensing/ILicenseResultListener$Stub;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/licensing/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultListener"
.end annotation


# instance fields
.field private mOnTimeout:Ljava/lang/Runnable;

.field private final mValidator:Lcom/google/android/vending/licensing/LicenseValidator;

.field final synthetic this$0:Lcom/google/android/vending/licensing/LicenseChecker;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 4
    .param p2, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-direct {p0}, Lcom/google/android/vending/licensing/ILicenseResultListener$Stub;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/google/android/vending/licensing/LicenseValidator;

    .line 212
    new-instance v0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;-><init>(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)V

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    .line 219
    invoke-static {}, Lcom/google/android/vending/licensing/LicenseChecker;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Start monitoring timeout."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->access$700(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseValidator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/google/android/vending/licensing/LicenseValidator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)V
    .locals 2
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    .prologue
    .line 206
    invoke-static {}, Lcom/google/android/vending/licensing/LicenseChecker;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Clearing timeout."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->access$700(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->access$700(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$2;-><init>(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method
