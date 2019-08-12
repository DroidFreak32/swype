.class public final Lcom/google/android/vending/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/security/SecureRandom;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation
.end field

.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/google/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "LicenseChecker"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 68
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p3, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    .line 84
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    .line 93
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 95
    invoke-static {p3}, Lcom/google/android/vending/licensing/LicenseChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    .line 96
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;
    .param p1, "x1"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;
    .param p1, "x1"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanupService()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 324
    :cond_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 1
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, "decodedKey":[B
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 116
    .end local v0    # "decodedKey":[B
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 119
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    sget-object v2, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Could not decode from Base64."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :catch_2
    move-exception v1

    .line 123
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    sget-object v2, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Invalid key specification."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 353
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Package not found. could not get version code."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 357
    const-string v0, ""

    goto :goto_0
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 3
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    const/16 v1, 0x123

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runChecks()V
    .locals 7

    .prologue
    .line 185
    :goto_0
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/licensing/LicenseValidator;

    .local v1, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    sget-object v2, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Calling checkLicense on service for "

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getNonce()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-direct {v6, p0, v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/google/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V

    .line 191
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "RemoteException in checkLicense call."

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 194
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    goto :goto_0

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v1}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Using cached license response to allow access"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 144
    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v1}, Lcom/google/android/vending/licensing/Policy;->denyAccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Using cached license response to deny access"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 147
    const/16 v1, 0x231

    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 149
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/android/vending/licensing/LicenseValidator;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    new-instance v2, Lcom/google/android/vending/licensing/DeviceLimiter;

    invoke-direct {v2}, Lcom/google/android/vending/licensing/DeviceLimiter;-><init>()V

    sget-object v3, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/licensing/LicenseValidator;-><init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_3

    .line 153
    sget-object v1, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Binding to licensing service."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    new-instance v7, Landroid/content/Intent;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    invoke-static {v2}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 165
    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 172
    .end local v7    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    const/4 v1, 0x6

    :try_start_4
    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 168
    .restart local v7    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    :try_start_5
    sget-object v1, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Could not bind to service."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 173
    .end local v7    # "serviceIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->printStackTrace()V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized onDestroy()V
    .locals 1

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V

    .line 336
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 287
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Service unexpectedly disconnected."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
