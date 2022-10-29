.class final enum Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
.super Ljava/lang/Enum;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DbInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/DatabaseConfig$DbInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field public static final enum ALM_LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field public static final enum CDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field public static final enum HDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field public static final enum LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field public static final enum TRACE_LDB1:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field public static final enum TRACE_LDB2:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

.field private static final tagToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/DatabaseConfig$DbInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final compressed:Z

.field final tag:Ljava/lang/String;

.field final type:Lcom/nuance/swype/input/DatabaseConfig$DbType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 67
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string/jumbo v1, "LDB"

    const-string/jumbo v3, "ldb"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 68
    new-instance v3, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string/jumbo v4, "ALM_LDB"

    const-string/jumbo v6, "almldb"

    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v3, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->ALM_LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 69
    new-instance v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string/jumbo v7, "TRACE_LDB1"

    const-string/jumbo v9, "traceldb1"

    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move v8, v13

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB1:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 70
    new-instance v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string/jumbo v7, "TRACE_LDB2"

    const-string/jumbo v9, "traceldb2"

    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move v8, v14

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB2:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 71
    new-instance v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string/jumbo v7, "HDB"

    const-string/jumbo v9, "hdb"

    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig$DbType;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move v8, v15

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 72
    new-instance v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string/jumbo v7, "CDB"

    const/4 v8, 0x5

    const-string/jumbo v9, "cdb"

    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig$DbType;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v6, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->ALM_LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB1:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v1, v0, v13

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB2:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v1, v0, v14

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v3, v0, v1

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->$VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tagToEnum:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->values()[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v0

    array-length v1, v0

    .local v12, "info":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    :goto_92
    if-ge v2, v1, :cond_a0

    aget-object v12, v0, v2

    .line 88
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tagToEnum:Ljava/util/Map;

    iget-object v4, v12, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tag:Ljava/lang/String;

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 90
    :cond_a0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V
    .registers 6
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/nuance/swype/input/DatabaseConfig$DbType;
    .param p5, "compressed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/DatabaseConfig$DbType;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tag:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->type:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    .line 82
    iput-boolean p5, p0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->compressed:Z

    .line 83
    return-void
.end method

.method public static fromTag(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tagToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->$VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method
