.class public final Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;
.super Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;


# static fields
.field public static final TYPE_EULA:I = 0x2

.field public static final TYPE_PRIVACY_POLICY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;-><init>()V

    return-void
.end method

.method private documentTypeAllowed(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getDocumentByType(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->documentTypeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->setDocumentShown(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->service:Lcom/nuance/connect/api/DocumentService;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersionByType(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->documentTypeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final userAcceptDocumentByType(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->documentTypeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->isDocumentShown(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x79

    const-string v2, "You must call getDocumentByType before calling userAcceptDocumentByType()"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Document "

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, " version "

    invoke-virtual {p0, v7}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->getVersionByType(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " accepted on "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->service:Lcom/nuance/connect/api/DocumentService;

    invoke-interface {v0, v7}, Lcom/nuance/connect/api/DocumentService;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V

    return-void
.end method

.method public final userHasAcceptedDocumentByType(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->documentTypeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isTOSAccepted()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isEulaAccepted()Z

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
