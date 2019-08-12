.class public final enum Lcom/nuance/sns/ScraperStatus$STATUS;
.super Ljava/lang/Enum;
.source "ScraperStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/ScraperStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/sns/ScraperStatus$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/sns/ScraperStatus$STATUS;

.field public static final enum FAILED:Lcom/nuance/sns/ScraperStatus$STATUS;

.field public static final enum FINISHED:Lcom/nuance/sns/ScraperStatus$STATUS;

.field public static final enum NONE:Lcom/nuance/sns/ScraperStatus$STATUS;

.field public static final enum WORKING:Lcom/nuance/sns/ScraperStatus$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/nuance/sns/ScraperStatus$STATUS;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/ScraperStatus$STATUS;->WORKING:Lcom/nuance/sns/ScraperStatus$STATUS;

    .line 32
    new-instance v0, Lcom/nuance/sns/ScraperStatus$STATUS;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/sns/ScraperStatus$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/ScraperStatus$STATUS;->FINISHED:Lcom/nuance/sns/ScraperStatus$STATUS;

    .line 33
    new-instance v0, Lcom/nuance/sns/ScraperStatus$STATUS;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/sns/ScraperStatus$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/ScraperStatus$STATUS;->FAILED:Lcom/nuance/sns/ScraperStatus$STATUS;

    .line 34
    new-instance v0, Lcom/nuance/sns/ScraperStatus$STATUS;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/sns/ScraperStatus$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/sns/ScraperStatus$STATUS;->NONE:Lcom/nuance/sns/ScraperStatus$STATUS;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/sns/ScraperStatus$STATUS;

    sget-object v1, Lcom/nuance/sns/ScraperStatus$STATUS;->WORKING:Lcom/nuance/sns/ScraperStatus$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/sns/ScraperStatus$STATUS;->FINISHED:Lcom/nuance/sns/ScraperStatus$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/sns/ScraperStatus$STATUS;->FAILED:Lcom/nuance/sns/ScraperStatus$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/sns/ScraperStatus$STATUS;->NONE:Lcom/nuance/sns/ScraperStatus$STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/sns/ScraperStatus$STATUS;->$VALUES:[Lcom/nuance/sns/ScraperStatus$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/sns/ScraperStatus$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/nuance/sns/ScraperStatus$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/sns/ScraperStatus$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/nuance/sns/ScraperStatus$STATUS;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nuance/sns/ScraperStatus$STATUS;->$VALUES:[Lcom/nuance/sns/ScraperStatus$STATUS;

    invoke-virtual {v0}, [Lcom/nuance/sns/ScraperStatus$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/sns/ScraperStatus$STATUS;

    return-object v0
.end method
