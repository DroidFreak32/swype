.class public final enum Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;
.super Ljava/lang/Enum;
.source "StartupSequenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupSequenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwypeIMEState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

.field public static final enum DISABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

.field public static final enum ENABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

.field public static final enum SELECTED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    .line 90
    new-instance v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->ENABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    .line 91
    new-instance v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    const-string/jumbo v1, "SELECTED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->ENABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->$VALUES:[Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->$VALUES:[Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    invoke-virtual {v0}, [Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    return-object v0
.end method
