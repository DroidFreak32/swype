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
    .locals 10

    .prologue
    .line 63
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string v1, "LDB"

    const/4 v2, 0x0

    const-string v3, "ldb"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 64
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string v1, "ALM_LDB"

    const/4 v2, 0x1

    const-string v3, "almldb"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->ALM_LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 65
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string v1, "TRACE_LDB1"

    const/4 v2, 0x2

    const-string v3, "traceldb1"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB1:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 66
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string v1, "TRACE_LDB2"

    const/4 v2, 0x3

    const-string v3, "traceldb2"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB2:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 67
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string v1, "HDB"

    const/4 v2, 0x4

    const-string v3, "hdb"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 68
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const-string v1, "CDB"

    const/4 v2, 0x5

    const-string v3, "cdb"

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->ALM_LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB1:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB2:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->$VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tagToEnum:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->values()[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v6

    .local v6, "arr$":[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v8, v6, v7

    .line 84
    .local v8, "info":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tagToEnum:Ljava/util/Map;

    iget-object v1, v8, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 86
    .end local v8    # "info":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$DbType;Z)V
    .locals 0
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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tag:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->type:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    .line 78
    iput-boolean p5, p0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->compressed:Z

    .line 79
    return-void
.end method

.method public static fromTag(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->tagToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->$VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method
