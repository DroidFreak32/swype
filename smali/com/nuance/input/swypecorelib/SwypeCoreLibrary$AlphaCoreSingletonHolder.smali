.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$AlphaCoreSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaCoreSingletonHolder"
.end annotation


# static fields
.field private static final ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$AlphaCoreSingletonHolder;->ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$AlphaCoreSingletonHolder;->ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    return-object v0
.end method
