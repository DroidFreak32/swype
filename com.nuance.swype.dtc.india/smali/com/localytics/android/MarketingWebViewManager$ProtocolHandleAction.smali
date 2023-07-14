.class final enum Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
.super Ljava/lang/Enum;
.source "MarketingWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProtocolHandleAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

.field public static final enum DO_NOT_OPEN:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

.field public static final enum OPENING_EXTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

.field public static final enum OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

.field public static final enum PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    const-string/jumbo v1, "PROTOCOL_UNMATCHED"

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 55
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    const-string/jumbo v1, "OPENING_INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 56
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    const-string/jumbo v1, "OPENING_EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_EXTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 57
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    const-string/jumbo v1, "DO_NOT_OPEN"

    invoke-direct {v0, v1, v5}, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->DO_NOT_OPEN:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_EXTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->DO_NOT_OPEN:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->$VALUES:[Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->$VALUES:[Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    invoke-virtual {v0}, [Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    return-object v0
.end method
