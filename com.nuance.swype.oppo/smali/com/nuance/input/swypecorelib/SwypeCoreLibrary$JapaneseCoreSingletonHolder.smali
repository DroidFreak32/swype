.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$JapaneseCoreSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JapaneseCoreSingletonHolder"
.end annotation


# static fields
.field private static final JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$JapaneseCoreSingletonHolder;->JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$JapaneseCoreSingletonHolder;->JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    return-object v0
.end method
