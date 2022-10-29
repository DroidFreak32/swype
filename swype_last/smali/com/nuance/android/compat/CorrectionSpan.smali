.class public Lcom/nuance/android/compat/CorrectionSpan;
.super Landroid/text/style/CharacterStyle;
.source "CorrectionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nuance/android/compat/CorrectionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TextPaint_setUnderlineText:Ljava/lang/reflect/Method;

.field private static final isSdk18:Z

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLocaleString:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mNotificationTargetPackageName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;

.field private underlineColor:I

.field private underlineThickness:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    const-string/jumbo v0, "SmartCorrectionSpan"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_32

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/nuance/android/compat/CorrectionSpan;->isSdk18:Z

    .line 281
    new-instance v0, Lcom/nuance/android/compat/CorrectionSpan$1;

    invoke-direct {v0}, Lcom/nuance/android/compat/CorrectionSpan$1;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 294
    const-class v0, Landroid/text/TextPaint;

    const-string/jumbo v3, "setUnderlineText"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v1

    .line 295
    invoke-static {v0, v3, v4}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpan;->TextPaint_setUnderlineText:Ljava/lang/reflect/Method;

    .line 294
    return-void

    :cond_32
    move v0, v2

    .line 61
    goto :goto_12
.end method

.method private constructor <init>(Landroid/content/Context;III[Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "underlineColor"    # I
    .param p3, "underlineThickness"    # I
    .param p4, "flags"    # I
    .param p5, "suggestions"    # [Ljava/lang/String;
    .param p7, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p6, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 107
    iput p2, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineColor:I

    .line 108
    iput p3, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    .line 111
    const/4 v0, 0x5

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    .line 112
    iput p4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    .line 113
    if-eqz p7, :cond_3f

    .line 114
    invoke-virtual {p7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    .line 123
    :goto_1f
    if-eqz p6, :cond_60

    .line 125
    invoke-virtual {p6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 129
    :goto_27
    if-eqz p1, :cond_66

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    .line 134
    :goto_2f
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CorrectionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    .line 137
    invoke-direct {p0, p1}, Lcom/nuance/android/compat/CorrectionSpan;->initStyle(Landroid/content/Context;)V

    .line 138
    return-void

    .line 115
    :cond_3f
    if-eqz p1, :cond_52

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 117
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    goto :goto_1f

    .line 119
    :cond_52
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "No locale or context specified in SuggestionSpan constructor"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 120
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    goto :goto_1f

    .line 127
    :cond_60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_27

    .line 132
    :cond_66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    goto :goto_2f
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 163
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "CorrectionSpan(Parcel src)"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 172
    sget-boolean v0, Lcom/nuance/android/compat/CorrectionSpan;->isSdk18:Z

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 181
    return-void

    .line 172
    :cond_62
    const-string/jumbo v0, ""

    goto :goto_35
.end method

.method public static createCorrectionSpan(Landroid/content/Context;II)Lcom/nuance/android/compat/CorrectionSpan;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "underlineColor"    # I
    .param p2, "underlineThickness"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 94
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    .line 98
    .local v5, "suggestions":[Ljava/lang/String;
    new-instance v0, Lcom/nuance/android/compat/CorrectionSpan;

    const/4 v4, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/android/compat/CorrectionSpan;-><init>(Landroid/content/Context;III[Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "notificationTargetClassName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 276
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    .line 141
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "initStyle()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 143
    if-nez p1, :cond_22

    .line 144
    iput v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    .line 145
    iput v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    .line 146
    iput v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 147
    iput v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    .line 148
    iput v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 149
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineColor:I

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    .line 160
    :goto_21
    return-void

    .line 153
    :cond_22
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    .line 154
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    .line 155
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 156
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    .line 157
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 158
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineColor:I

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    goto :goto_21
.end method

.method private static invokeSetUnderlineText(Landroid/text/TextPaint;IF)V
    .registers 7
    .param p0, "tp"    # Landroid/text/TextPaint;
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 300
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->TextPaint_setUnderlineText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    .line 301
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->TextPaint_setUnderlineText:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 232
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "describeContents()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 233
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    sget-object v2, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "equals()"

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 265
    instance-of v2, p1, Lcom/nuance/android/compat/CorrectionSpan;

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    if-ne v2, v3, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public getFlags()I
    .registers 5

    .prologue
    .line 221
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getFlags()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 222
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 5

    .prologue
    .line 202
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getLocale()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 216
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getNotificationTargetClassName()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 5

    .prologue
    .line 257
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getSpanTypeId()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 259
    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 187
    sget-object v3, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getSuggestions()"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 189
    iget-object v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v2, v3

    .line 190
    .local v2, "len":I
    new-array v0, v2, [Ljava/lang/String;

    .line 191
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-eq v1, v2, :cond_1f

    .line 192
    iget-object v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 195
    :cond_1f
    return-object v0
.end method

.method public getUnderlineColor()I
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    sget-object v5, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "getUnderlineColor()"

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 349
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2a

    move v2, v3

    .line 350
    .local v2, "misspelled":Z
    :goto_15
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2c

    move v1, v3

    .line 351
    .local v1, "easy":Z
    :goto_1c
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2e

    move v0, v3

    .line 352
    .local v0, "autoCorrection":Z
    :goto_23
    if-eqz v1, :cond_33

    .line 353
    if-nez v2, :cond_30

    .line 354
    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 361
    :cond_29
    :goto_29
    return v4

    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_2a
    move v2, v4

    .line 349
    goto :goto_15

    .restart local v2    # "misspelled":Z
    :cond_2c
    move v1, v4

    .line 350
    goto :goto_1c

    .restart local v1    # "easy":Z
    :cond_2e
    move v0, v4

    .line 351
    goto :goto_23

    .line 356
    .restart local v0    # "autoCorrection":Z
    :cond_30
    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    goto :goto_29

    .line 358
    :cond_33
    if-eqz v0, :cond_29

    .line 359
    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    goto :goto_29
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 270
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hashCode()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 271
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    return v0
.end method

.method public setFlags(I)V
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setFlags()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 227
    iput p1, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    .line 228
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 9
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 307
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2f

    move v2, v3

    .line 308
    .local v2, "misspelled":Z
    :goto_9
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_31

    move v1, v3

    .line 309
    .local v1, "easy":Z
    :goto_10
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_33

    move v0, v3

    .line 311
    .local v0, "autoCorrection":Z
    :goto_17
    sget-object v5, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "updateDrawState()"

    aput-object v6, v3, v4

    invoke-interface {v5, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 313
    if-eqz v1, :cond_3d

    .line 314
    if-nez v2, :cond_35

    .line 318
    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-static {p1, v3, v4}, Lcom/nuance/android/compat/CorrectionSpan;->invokeSetUnderlineText(Landroid/text/TextPaint;IF)V

    .line 338
    :cond_2e
    :goto_2e
    return-void

    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_2f
    move v2, v4

    .line 307
    goto :goto_9

    .restart local v2    # "misspelled":Z
    :cond_31
    move v1, v4

    .line 308
    goto :goto_10

    .restart local v1    # "easy":Z
    :cond_33
    move v0, v4

    .line 309
    goto :goto_17

    .line 328
    .restart local v0    # "autoCorrection":Z
    :cond_35
    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    invoke-static {p1, v3, v4}, Lcom/nuance/android/compat/CorrectionSpan;->invokeSetUnderlineText(Landroid/text/TextPaint;IF)V

    goto :goto_2e

    .line 331
    :cond_3d
    if-eqz v0, :cond_2e

    .line 334
    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-static {p1, v3, v4}, Lcom/nuance/android/compat/CorrectionSpan;->invokeSetUnderlineText(Landroid/text/TextPaint;IF)V

    goto :goto_2e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 238
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "writeToParcel()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    sget-boolean v0, Lcom/nuance/android/compat/CorrectionSpan;->isSdk18:Z

    if-eqz v0, :cond_2b

    .line 244
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    :cond_2b
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 249
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 251
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 253
    return-void
.end method
