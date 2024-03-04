.class public final Lcom/nuance/swypeconnect/ac/ACDLMConnector;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDbBase;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDbBase;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDbBase;,
        Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;
    }
.end annotation


# static fields
.field public static final CORE_ALPHA:I = 0x1

.field public static final CORE_CHINESE:I = 0x3

.field public static final CORE_JAPANESE:I = 0x4

.field public static final CORE_KOREAN:I = 0x2

.field public static final DLM_RESERVED_DEFAULT:I = 0x0

.field public static final DLM_SIZE_LARGE:I = 0x300000

.field public static final DLM_SIZE_MIN:I = 0x19000

.field public static final DLM_SIZE_NORMAL:I = 0x200000

.field public static final DLM_SIZE_SMALL:I = 0x100000

.field public static final DLM_SIZE_TINY:I = 0x32000

.field public static final DLM_USER_CATEGORY:I

.field private static final eventCompiler:Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;


# instance fields
.field private alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;

.field private alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

.field private chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

.field private chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

.field private koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

.field private koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private final service:Lcom/nuance/connect/api/DLMConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;-><init>()V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->eventCompiler:Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/api/DLMConnector;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    return-object v0
.end method

.method static synthetic access$300()Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->eventCompiler:Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    return-object v0
.end method

.method public static decodeEvent([B)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->eventCompiler:Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;->compile([B)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bindAlphaDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x73

    const-string v2, "The Alpha DLM you are attempting to bind is already bound."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x81

    const-string v2, "This SDK is unlicensed."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$1;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/api/DLMConnector;->registerDlmCallback(ILcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    return-object v0
.end method

.method public final bindChineseDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x73

    const-string v2, "The Chinese DLM you are attempting to bind is already bound."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x81

    const-string v2, "This SDK is unlicensed."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/api/DLMConnector;->registerDlmCallback(ILcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    return-object v0
.end method

.method public final bindKoreanDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x73

    const-string v2, "The Korean DLM you are attempting to bind is already bound."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x81

    const-string v2, "This SDK is unlicensed."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/api/DLMConnector;->registerDlmCallback(ILcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    return-object v0
.end method

.method protected final getConnector()Lcom/nuance/connect/api/DLMConnector;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    return-object v0
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DLM"

    return-object v0
.end method

.method public final releaseAlphaDlm()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector;->unregisterDlmCallback(I)V

    return-void
.end method

.method public final releaseChineseDlm()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector;->unregisterDlmCallback(I)V

    return-void
.end method

.method public final releaseKoreanDlm()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector;->unregisterDlmCallback(I)V

    return-void
.end method

.method final requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setDLMSize(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x81

    const-string v2, "This SDK is unlicensed."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/DLMConnector;->isSupportedCore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/connect/api/DLMConnector$DLMInfo;-><init>(III)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/DLMConnector;->setDLMInfo(Lcom/nuance/connect/api/DLMConnector$DLMInformation;)V

    return-void

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid DLM core"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseAlphaDlm()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseChineseDlm()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseKoreanDlm()V

    return-void
.end method

.method final start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->isShutdown:Z

    return-void
.end method
