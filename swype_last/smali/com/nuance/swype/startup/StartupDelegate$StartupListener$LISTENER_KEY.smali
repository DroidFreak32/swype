.class public final enum Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;
.super Ljava/lang/Enum;
.source "StartupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupDelegate$StartupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LISTENER_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

.field public static final enum ACCEPT_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

.field public static final enum ACTIVITY_RESULT_CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

.field public static final enum ACTIVITY_RESULT_OK_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

.field public static final enum CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

.field public static final enum SKIP_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    const-string/jumbo v1, "SKIP_LISTENER_KEY"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->SKIP_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    new-instance v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    const-string/jumbo v1, "CANCEL_LISTENER_KEY"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    new-instance v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    const-string/jumbo v1, "ACCEPT_LISTENER_KEY"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACCEPT_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    new-instance v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    const-string/jumbo v1, "ACTIVITY_RESULT_OK_LISTENER_KEY"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_OK_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    new-instance v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    const-string/jumbo v1, "ACTIVITY_RESULT_CANCEL_LISTENER_KEY"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->SKIP_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACCEPT_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_OK_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->$VALUES:[Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->$VALUES:[Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    invoke-virtual {v0}, [Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    return-object v0
.end method
