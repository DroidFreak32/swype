.class public final Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;
.super Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;


# static fields
.field public static final TYPE_EULA:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected final documentTypeAllowed(I)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final userHasAcceptedDocumentByType(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->documentTypeAllowed(I)Z

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
