.class public Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;
.super Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToDownloadedLanguage(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->convertToDownloadedLanguage(I)V

    return-void
.end method

.method protected requiresDocument(I)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
