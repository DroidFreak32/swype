.class final enum Lcom/nuance/swype/input/DatabaseConfig$DbType;
.super Ljava/lang/Enum;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DbType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/DatabaseConfig$DbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbType;

.field public static final enum CDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

.field public static final enum HDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

.field public static final enum LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;


# instance fields
.field final section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const-string/jumbo v1, "HDB"

    const-string/jumbo v2, "hwr_db_template"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/input/DatabaseConfig$DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    .line 56
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const-string/jumbo v1, "LDB"

    const-string/jumbo v2, "ldb"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/input/DatabaseConfig$DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    .line 57
    new-instance v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    const-string/jumbo v1, "CDB"

    const-string/jumbo v2, "cdb"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/input/DatabaseConfig$DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/DatabaseConfig$DbType;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbType;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbType;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;->$VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/nuance/swype/input/DatabaseConfig$DbType;->section:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/DatabaseConfig$DbType;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig$DbType;->$VALUES:[Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/DatabaseConfig$DbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/DatabaseConfig$DbType;

    return-object v0
.end method
