.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$KoreanCoreSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KoreanCoreSingletonHolder"
.end annotation


# static fields
.field private static final KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$KoreanCoreSingletonHolder;->KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$KoreanCoreSingletonHolder;->KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    return-object v0
.end method
