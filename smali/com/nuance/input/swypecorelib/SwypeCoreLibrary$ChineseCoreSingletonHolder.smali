.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$ChineseCoreSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChineseCoreSingletonHolder"
.end annotation


# static fields
.field private static final CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$ChineseCoreSingletonHolder;->CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$ChineseCoreSingletonHolder;->CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method
