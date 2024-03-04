.class Lcom/nuance/connect/internal/DocumentServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;

# interfaces
.implements Lcom/nuance/connect/api/DocumentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DocumentServiceInternal$3;
    }
.end annotation


# static fields
.field private static final BUILT_IN_LOCALES_KEY:Ljava/lang/String; = "DocumentServiceInternal_BUILT_IN_LOCALES"

.field private static final EULA:Ljava/lang/String; = "EULA_"

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final PRIVACY:Ljava/lang/String; = "PRIVACY_"

.field private static final TOS:Ljava/lang/String; = "TOS_"

.field private static final USAGE:Ljava/lang/String; = "USAGE_"


# instance fields
.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field protected currentLocale:Ljava/util/Locale;

.field private documentRevisionProvided:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private documents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field localeCallback:Lcom/nuance/connect/api/LocaleCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mainHandler:Landroid/os/Handler;

.field private final unprocessedLocales:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$1;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->localeCallback:Lcom/nuance/connect/api/LocaleCallback;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$2;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->localeCallback:Lcom/nuance/connect/api/LocaleCallback;

    invoke-virtual {p1, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->setup(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/DocumentServiceInternal;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocumentsForLocale(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/DocumentServiceInternal;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/DocumentServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private addApkDocuments()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocumentsForLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private addApkDocumentsForLocale(Ljava/util/Locale;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {v0, v1}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DocumentServiceInternal_BUILT_IN_LOCALES"

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private addDocument(Lcom/nuance/connect/internal/common/Document;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addToResources(Lcom/nuance/connect/internal/common/Document;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addToResources(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_0
.end method

.method private addToResources(Lcom/nuance/connect/internal/common/Document;Ljava/lang/String;Z)V
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempting to add resource without locale, declining"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ResourcesService;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDefaultDocument(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/nuance/connect/api/ResourcesService;->setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "By-passing resources check."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1, p2}, Lcom/nuance/connect/internal/common/Document;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/nuance/connect/api/ResourcesService;->setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Document not found from the server!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addToResources(Lcom/nuance/connect/internal/common/Document;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addToResources(Lcom/nuance/connect/internal/common/Document;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkDefaultDocument(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/internal/common/Document;->addTranslation(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0, v6}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    move v3, v6

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    const-string v4, ""

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkDefaultDocument(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getNameDocumentName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    const-class v3, Lcom/nuance/connect/internal/DocumentServiceInternalRuntime;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private getBuiltInDocumentLocales()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-class v0, Lcom/nuance/connect/internal/DocumentServiceInternalRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EULA_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TOS_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PRIVACY_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "USAGE_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getDefaultDocument(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getNameDocumentName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    const-class v2, Lcom/nuance/connect/internal/DocumentServiceInternalRuntime;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getLatestDocumentRevision(II)I
    .locals 3

    invoke-static {p1, p2}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNameDocumentName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unkown Document Type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EULA_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PRIVACY_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "USAGE_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TOS_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setup(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p1, v0}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DocumentServiceInternal_BUILT_IN_LOCALES"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getBuiltInDocumentLocales()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "DocumentServiceInternal_BUILT_IN_LOCALES"

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocuments()V

    return-void

    :cond_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->unprocessedLocales:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V
    .locals 4

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/common/Document;->setAcceptedTimestamp(J)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DOCUMENT_ACCEPTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :goto_1
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->acceptEula()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->userHasAcceptedTOS()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/UserSettings;->setDataCollectionAccepted(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Accept document failed. Unknown revision("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") requested for docType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getLatestDocumentRevision(II)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ResourcesService;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get document failed. requested for docType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getLatestDocumentRevision(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
