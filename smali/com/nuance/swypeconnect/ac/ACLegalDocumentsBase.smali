.class public Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLegalDocuments;


# instance fields
.field protected customerLog:Lcom/nuance/connect/util/Logger$Log;

.field protected documentsShown:Landroid/util/SparseBooleanArray;

.field protected service:Lcom/nuance/connect/api/DocumentService;

.field protected settings:Lcom/nuance/connect/internal/UserSettings;


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


# virtual methods
.method public getDocumentByType(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->setDocumentShown(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    invoke-static {p1, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTOS()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->setDocumentShown(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTOSVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionByType(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/DocumentService;->getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/nuance/connect/api/ConnectServiceManager;)V
    .locals 1

    invoke-interface {p1}, Lcom/nuance/connect/api/ConnectServiceManager;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->settings:Lcom/nuance/connect/internal/UserSettings;

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DocumentService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    return-void
.end method

.method protected isDocumentShown(I)Z
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

.method protected setDocumentShown(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->documentsShown:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public userAcceptDocumentByType(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->isDocumentShown(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x79

    const-string v2, "You must call getDocumentByType before calling userAcceptDocumentByType()"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Document "

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, " version "

    invoke-virtual {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " accepted on "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    invoke-interface {v0, v7}, Lcom/nuance/connect/api/DocumentService;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V

    return-void
.end method

.method public userAcceptedTOS()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->isDocumentShown(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x72

    const-string v2, "You must call getTOS before calling userAcceptedTOS()"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Terms of Service version "

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getTOSVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, " accepted on "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V

    return-void
.end method

.method public userHasAcceptedDocumentByType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public userHasAcceptedTOS()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->userHasAcceptedDocumentByType(I)Z

    move-result v0

    return v0
.end method
