.class public final enum Lcom/nuance/connect/internal/common/Document$DocumentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/Document$DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;


# instance fields
.field private documentClass:I

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string/jumbo v1, "TERMS_OF_SERVICE"

    invoke-direct {v0, v1, v5, v2, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string/jumbo v1, "EULA"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string/jumbo v1, "PRIVACY_POLICY"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string/jumbo v1, "DATA_OPT_IN"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    new-array v0, v6, [Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->$VALUES:[Lcom/nuance/connect/internal/common/Document$DocumentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->id:I

    iput p4, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->documentClass:I

    return-void
.end method

.method public static fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;
    .registers 7

    invoke-static {}, Lcom/nuance/connect/internal/common/Document$DocumentType;->values()[Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v4

    if-ne v4, p0, :cond_18

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v4

    if-ne v4, p1, :cond_18

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/Document$DocumentType;
    .registers 2

    const-class v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/Document$DocumentType;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->$VALUES:[Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/Document$DocumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/Document$DocumentType;

    return-object v0
.end method


# virtual methods
.method public final getDocTypeId()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->id:I

    return v0
.end method

.method public final getDocumentClassId()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->documentClass:I

    return v0
.end method
