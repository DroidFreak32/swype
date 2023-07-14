.class public Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLegalDocuments;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$1;,
        Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;
    }
.end annotation


# instance fields
.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private customerLog:Lcom/nuance/connect/util/Logger$Log;

.field private documentsShown:Landroid/util/SparseBooleanArray;

.field protected service:Lcom/nuance/connect/api/DocumentService;

.field public settings:Lcom/nuance/connect/internal/UserSettings;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentsShown:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private documentTypeAllowed(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    move-result v0

    return v0
.end method

.method private getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1}, Lcom/nuance/connect/api/ConfigService;->getActiveLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/api/DocumentService;->getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasDocumentChanged(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isTosChanged()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isUsageChanged()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isEulaChanged()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isDocumentShown(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentsShown:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDocumentShown(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentsShown:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method


# virtual methods
.method public acceptDocument(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)Z

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->getLatestVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/nuance/connect/api/DocumentService;->acceptDocumentIfCurrent(Lcom/nuance/connect/internal/common/Document$DocumentType;I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " version "

    invoke-direct {p0, v4}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " accepted on "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x88

    const-string/jumbo v2, "The document being accepted is out of date.  An updated version of the document must be requested before it can be accepted."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public documentTypeAllowed(I)Z
    .locals 2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v1
.end method

.method public getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/api/DocumentService;->getAllRevisions(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->hasDocumentChanged(I)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->userHasAcceptedDocumentByType(I)Z

    move-result v5

    const/4 v6, 0x0

    move v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;-><init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$1;)V

    return-object v0
.end method

.method public getDocument(ILjava/util/Locale;)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/api/DocumentService;->getAllRevisions(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->hasDocumentChanged(I)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->userHasAcceptedDocumentByType(I)Z

    move-result v5

    const/4 v7, 0x0

    move v1, p1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;-><init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLjava/util/Locale;Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$1;)V

    return-object v0
.end method

.method public getDocumentByType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getDocumentByType(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDocumentByType(ILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->setDocumentShown(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nuance/connect/api/DocumentService;->getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionByType(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/nuance/connect/api/ConnectServiceManager;)V
    .locals 2

    invoke-interface {p1}, Lcom/nuance/connect/api/ConnectServiceManager;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DocumentService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isResetEulaOnNextStart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->resetEula()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isResetTOSAcceptedOnNextStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->resetTOS()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isResetUsageAcceptedOnNextStart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDataCollectionAccepted(Z)V

    :cond_2
    return-void
.end method

.method public resetChangedFlag(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)Z

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Document "

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, " changed flag reset on "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0, v6}, Lcom/nuance/connect/internal/UserSettings;->setTosChanged(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0, v6}, Lcom/nuance/connect/internal/UserSettings;->setUsageChanged(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0, v6}, Lcom/nuance/connect/internal/UserSettings;->setEulaChanged(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public userAcceptDocumentByType(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->isDocumentShown(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x79

    const-string/jumbo v2, "You must call getDocumentByType before calling userAcceptDocumentByType()"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " version "

    invoke-direct {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " accepted on "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    invoke-interface {v0, v7}, Lcom/nuance/connect/api/DocumentService;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V

    return-void
.end method

.method public userHasAcceptedDocumentByType(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentTypeAllowed(I)Z

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isTOSAccepted()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
