.class public final enum Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACLdbType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

.field public static final enum ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

.field public static final enum Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

.field public static final enum MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

.field public static final enum Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

.field static values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    const-string/jumbo v1, "Unspecified"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    const-string/jumbo v1, "Baseline"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    const-string/jumbo v1, "MLM"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    const-string/jumbo v1, "ALM"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 6

    if-eqz p0, :cond_1c

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_1c
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    goto :goto_17
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    return-object v0
.end method
