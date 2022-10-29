.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9WriteKoreanSingletonHolder"
.end annotation


# static fields
.field private static final T9WRITIE_KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteKorean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 204
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;->T9WRITIE_KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/nuance/input/swypecorelib/T9WriteKorean;
    .registers 1

    .prologue
    .line 203
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;->T9WRITIE_KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    return-object v0
.end method
