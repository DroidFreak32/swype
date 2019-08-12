.class public final enum Lcom/nuance/connect/internal/Property$Source;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/Property$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/Property$Source;

.field public static final enum BUILD:Lcom/nuance/connect/internal/Property$Source;

.field public static final enum CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

.field public static final enum DEFAULT:Lcom/nuance/connect/internal/Property$Source;

.field public static final enum OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

.field public static final enum SERVER:Lcom/nuance/connect/internal/Property$Source;

.field public static final enum USER:Lcom/nuance/connect/internal/Property$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/connect/internal/Property$Source;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/Property$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    new-instance v0, Lcom/nuance/connect/internal/Property$Source;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/internal/Property$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    new-instance v0, Lcom/nuance/connect/internal/Property$Source;

    const-string v1, "CONNECT_DAT"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/internal/Property$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    new-instance v0, Lcom/nuance/connect/internal/Property$Source;

    const-string v1, "OEM_RUNTIME"

    invoke-direct {v0, v1, v6}, Lcom/nuance/connect/internal/Property$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    new-instance v0, Lcom/nuance/connect/internal/Property$Source;

    const-string v1, "BUILD"

    invoke-direct {v0, v1, v7}, Lcom/nuance/connect/internal/Property$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    new-instance v0, Lcom/nuance/connect/internal/Property$Source;

    const-string v1, "USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/Property$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/connect/internal/Property$Source;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/Property$Source;->$VALUES:[Lcom/nuance/connect/internal/Property$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/Property$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property$Source;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->$VALUES:[Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/Property$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/Property$Source;

    return-object v0
.end method
