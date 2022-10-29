.class public final Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;
.super Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;


# static fields
.field public static final TYPE_EULA:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected final documentTypeAllowed(I)Z
    .registers 4

    packed-switch p1, :pswitch_data_e

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid document type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method public final userHasAcceptedDocumentByType(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->documentTypeAllowed(I)Z

    packed-switch p1, :pswitch_data_1e

    :pswitch_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :pswitch_8
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isTOSAccepted()Z

    move-result v0

    goto :goto_7

    :pswitch_f
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    goto :goto_7

    :pswitch_16
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLegalDocumentsNuance;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isEulaAccepted()Z

    move-result v0

    goto :goto_7

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_16
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method
