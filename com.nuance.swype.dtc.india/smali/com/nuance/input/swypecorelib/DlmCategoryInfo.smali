.class public Lcom/nuance/input/swypecorelib/DlmCategoryInfo;
.super Ljava/lang/Object;
.source "DlmCategoryInfo.java"


# static fields
.field public static final EMPTY:Lcom/nuance/input/swypecorelib/DlmCategoryInfo;

.field static nativeID:[I

.field static nativeInfo:[C

.field static nativeInfoLen:[I

.field static nativeName:[C

.field static nativeNameLen:[I


# instance fields
.field public final id:I

.field public final info:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->EMPTY:Lcom/nuance/input/swypecorelib/DlmCategoryInfo;

    .line 19
    new-array v0, v5, [C

    sput-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeName:[C

    .line 20
    new-array v0, v5, [C

    sput-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeInfo:[C

    .line 21
    new-array v0, v4, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeID:[I

    .line 22
    new-array v0, v4, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeNameLen:[I

    .line 23
    new-array v0, v4, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeInfoLen:[I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->id:I

    .line 12
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->name:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->info:Ljava/lang/String;

    .line 14
    return-void
.end method
