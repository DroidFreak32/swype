.class public Lcom/nuance/swype/input/LVLLicense;
.super Ljava/lang/Object;
.source "LVLLicense.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field public static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk7E9iW+F/l1wYs/d/J9b6SON7WgBei34ywBFsFMAbq0O8kpC3xR/dNDRxm2Cx1cdlZjSdoKW14nG9NiStU6uFfa1xFK2F3eeEw7jMwSKb5PXhDFkaLATfAwstU7srQY4XnmbJtzMQcE4cHpxfe/DcDf09krN4zRGqGVNGXbIcs4gq40dEDWPkSrwI3C1XSGDaG8+rStUuzmCYMPSmmGogbbfLZCz0JvOuaaJdijqOrC/UcpEn/SRk8Y/qm6SADMnd9HKhpW79wH4XRwHHPI+3JDCpOMx04lXiEi9xmtF5Xl+HoVAMNMHgn+sOAhxtEteC7XsoCxFFLBDphZTw6qwfwIDAQAB"

.field private static final SALT:[B


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mConnectionTimeout:Z

.field private mIsLicensedUser:Z

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private mReceiveResult:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/input/LVLLicense;->SALT:[B

    return-void

    :array_0
    .array-data 1
        -0x2et
        0x42t
        0x1et
        -0x80t
        -0x67t
        -0x39t
        0x4at
        -0x40t
        0x33t
        0x58t
        -0x5ft
        -0x2dt
        0x42t
        -0x75t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x42t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 6
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "android_id"

    .line 36
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;-><init>(Lcom/nuance/swype/input/LVLLicense;)V

    iput-object v1, p0, Lcom/nuance/swype/input/LVLLicense;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 37
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v2, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v4, Lcom/nuance/swype/input/LVLLicense;->SALT:[B

    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p1, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk7E9iW+F/l1wYs/d/J9b6SON7WgBei34ywBFsFMAbq0O8kpC3xR/dNDRxm2Cx1cdlZjSdoKW14nG9NiStU6uFfa1xFK2F3eeEw7jMwSKb5PXhDFkaLATfAwstU7srQY4XnmbJtzMQcE4cHpxfe/DcDf09krN4zRGqGVNGXbIcs4gq40dEDWPkSrwI3C1XSGDaG8+rStUuzmCYMPSmmGogbbfLZCz0JvOuaaJdijqOrC/UcpEn/SRk8Y/qm6SADMnd9HKhpW79wH4XRwHHPI+3JDCpOMx04lXiEi9xmtF5Xl+HoVAMNMHgn+sOAhxtEteC7XsoCxFFLBDphZTw6qwfwIDAQAB"

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/LVLLicense;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/LVLLicense;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/LVLLicense;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/nuance/swype/input/LVLLicense;->mConnectionTimeout:Z

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/LVLLicense;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/LVLLicense;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/nuance/swype/input/LVLLicense;->mIsLicensedUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/LVLLicense;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/LVLLicense;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/input/LVLLicense;->receiveResult()V

    return-void
.end method

.method private receiveResult()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 69
    iget-boolean v0, p0, Lcom/nuance/swype/input/LVLLicense;->mConnectionTimeout:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mCallback:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicense;->mReceiveResult:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mCallback:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicense;->mReceiveResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public isConnectionTimeout()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/nuance/swype/input/LVLLicense;->mConnectionTimeout:Z

    return v0
.end method

.method public isLicensedUser()Z
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/LVLLicense;->mIsLicensedUser:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nuance/swype/input/LVLLicense;->mConnectionTimeout:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mReceiveResult:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mCallback:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicense;->mReceiveResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 57
    return-void
.end method

.method public runCheck()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicense;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 65
    return-void
.end method

.method public setHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "receiveLicenseResult"    # Ljava/lang/Runnable;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/swype/input/LVLLicense;->mCallback:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/nuance/swype/input/LVLLicense;->mReceiveResult:Ljava/lang/Runnable;

    .line 62
    return-void
.end method
