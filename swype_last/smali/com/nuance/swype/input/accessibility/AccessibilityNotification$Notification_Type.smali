.class public final enum Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;
.super Ljava/lang/Enum;
.source "AccessibilityNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/accessibility/AccessibilityNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Notification_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_CLOSE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_LANDSCAPE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_LAYER_EDIT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_LAYER_NUM:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_LAYER_PHONE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_LAYER_SYMBOLS:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_LAYER_TEXT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_PORTRAIT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_SYMBOL1:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_SYMBOL2:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_TEXT_ALL_CAP:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_TEXT_CAP:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

.field public static final enum ON_KEYBOARD_TEXT_LOWER_CASE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;


# instance fields
.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_CLOSE"

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_keyboard_close_short:I

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_CLOSE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 35
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_PORTRAIT"

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_keyboard_portrait_short:I

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_PORTRAIT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 36
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_LANDSCAPE"

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_keyboard_landscape_short:I

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LANDSCAPE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 37
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_LAYER_TEXT"

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_main_keyboard_A:I

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_TEXT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 38
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_LAYER_SYMBOLS"

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_symbol_keyboard:I

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_SYMBOLS:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 39
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_LAYER_EDIT"

    const/4 v2, 0x5

    sget v3, Lcom/nuance/swype/input/R$string;->edit_keyboard:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_EDIT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 40
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_LAYER_NUM"

    const/4 v2, 0x6

    sget v3, Lcom/nuance/swype/input/R$string;->number_keyboard:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_NUM:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 41
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_LAYER_PHONE"

    const/4 v2, 0x7

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_phone_keyboard:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_PHONE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 42
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_SYMBOL1"

    const/16 v2, 0x8

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_symbol_keyboard_shift_off:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_SYMBOL1:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 43
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_SYMBOL2"

    const/16 v2, 0x9

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_symbol_keyboard_shift_on:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_SYMBOL2:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 44
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_TEXT_LOWER_CASE"

    const/16 v2, 0xa

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_main_keyboard_shift_off:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_TEXT_LOWER_CASE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 45
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_TEXT_CAP"

    const/16 v2, 0xb

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_main_keyboard_shift_on_A:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_TEXT_CAP:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 46
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    const-string/jumbo v1, "ON_KEYBOARD_TEXT_ALL_CAP"

    const/16 v2, 0xc

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_main_keyboard_shift_lock_A:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_TEXT_ALL_CAP:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    sget-object v1, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_CLOSE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_PORTRAIT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LANDSCAPE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_TEXT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_SYMBOLS:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_EDIT:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_NUM:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_LAYER_PHONE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_SYMBOL1:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_SYMBOL2:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_TEXT_LOWER_CASE:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_TEXT_CAP:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->ON_KEYBOARD_TEXT_ALL_CAP:Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->$VALUES:[Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->resId:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->$VALUES:[Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;

    return-object v0
.end method


# virtual methods
.method public final getResourceId()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$Notification_Type;->resId:I

    return v0
.end method
