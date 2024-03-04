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
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    const-string v0, "SmartCorrectionSpan"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/nuance/android/compat/CorrectionSpan;->isSdk18:Z

    .line 288
    new-instance v0, Lcom/nuance/android/compat/CorrectionSpan$1;

    invoke-direct {v0}, Lcom/nuance/android/compat/CorrectionSpan$1;-><init>()V

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 301
    const-class v0, Landroid/text/TextPaint;

    const-string v3, "setUnderlineText"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpan;->TextPaint_setUnderlineText:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;III[Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 3
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
    .line 106
    .local p6, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 109
    iput p2, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineColor:I

    .line 110
    iput p3, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    .line 113
    const/4 v0, 0x5

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    .line 114
    iput p4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    .line 115
    if-eqz p7, :cond_0

    .line 116
    invoke-virtual {p7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    .line 125
    :goto_0
    if-eqz p6, :cond_2

    .line 126
    invoke-virtual {p6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 131
    :goto_1
    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    .line 136
    :goto_2
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CorrectionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    .line 139
    invoke-direct {p0, p1}, Lcom/nuance/android/compat/CorrectionSpan;->initStyle(Landroid/content/Context;)V

    .line 140
    return-void

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "No locale or context specified in SuggestionSpan constructor"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 165
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "CorrectionSpan(Parcel src)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 174
    sget-boolean v0, Lcom/nuance/android/compat/CorrectionSpan;->isSdk18:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 183
    return-void

    .line 174
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static createCorrectionSpan(Landroid/content/Context;II)Lcom/nuance/android/compat/CorrectionSpan;
    .locals 8
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

    .line 97
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
    .locals 4
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "notificationTargetClassName"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

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

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 143
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "initStyle()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 145
    if-nez p1, :cond_0

    .line 146
    iput v2, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    .line 147
    iput v2, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    .line 148
    iput v2, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 149
    iput v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    .line 150
    iput v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 151
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineColor:I

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    .line 156
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    .line 157
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineThickness:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 158
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    .line 159
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 160
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->underlineColor:I

    iput v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    goto :goto_0
.end method

.method private static invokeSetUnderlineText(Landroid/text/TextPaint;IF)V
    .locals 4
    .param p0, "tp"    # Landroid/text/TextPaint;
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 307
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->TextPaint_setUnderlineText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 308
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

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "describeContents()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 268
    sget-object v1, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "equals()"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 269
    instance-of v1, p1, Lcom/nuance/android/compat/CorrectionSpan;

    if-eqz v1, :cond_0

    .line 270
    check-cast p1, Lcom/nuance/android/compat/CorrectionSpan;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/nuance/android/compat/CorrectionSpan;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 272
    :cond_0
    return v0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "getFlags()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 226
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "getLocale()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "getNotificationTargetClassName()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "getSpanTypeId()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 263
    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    sget-object v3, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "getSuggestions()"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 191
    iget-object v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v2, v3

    .line 192
    .local v2, "len":I
    new-array v0, v2, [Ljava/lang/String;

    .line 193
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v2, :cond_0

    .line 194
    iget-object v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-object v0
.end method

.method public getUnderlineColor()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    sget-object v5, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "getUnderlineColor()"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 358
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move v2, v3

    .line 359
    .local v2, "misspelled":Z
    :goto_0
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 360
    .local v1, "easy":Z
    :goto_1
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    move v0, v3

    .line 361
    .local v0, "autoCorrection":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 362
    if-nez v2, :cond_4

    .line 363
    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    .line 370
    :cond_0
    :goto_3
    return v4

    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_1
    move v2, v4

    .line 358
    goto :goto_0

    .restart local v2    # "misspelled":Z
    :cond_2
    move v1, v4

    .line 359
    goto :goto_1

    .restart local v1    # "easy":Z
    :cond_3
    move v0, v4

    .line 360
    goto :goto_2

    .line 365
    .restart local v0    # "autoCorrection":Z
    :cond_4
    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    goto :goto_3

    .line 367
    :cond_5
    if-eqz v0, :cond_0

    .line 368
    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    goto :goto_3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "hashCode()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 278
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    return v0
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 230
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setFlags()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 231
    iput p1, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    .line 232
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 6
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move v2, v3

    .line 315
    .local v2, "misspelled":Z
    :goto_0
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 316
    .local v1, "easy":Z
    :goto_1
    iget v5, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    move v0, v3

    .line 318
    .local v0, "autoCorrection":Z
    :goto_2
    sget-object v3, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "updateDrawState()"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 320
    if-eqz v1, :cond_5

    .line 321
    if-nez v2, :cond_4

    .line 325
    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-static {p1, v3, v4}, Lcom/nuance/android/compat/CorrectionSpan;->invokeSetUnderlineText(Landroid/text/TextPaint;IF)V

    .line 345
    :cond_0
    :goto_3
    return-void

    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_1
    move v2, v4

    .line 314
    goto :goto_0

    .restart local v2    # "misspelled":Z
    :cond_2
    move v1, v4

    .line 315
    goto :goto_1

    .restart local v1    # "easy":Z
    :cond_3
    move v0, v4

    .line 316
    goto :goto_2

    .line 335
    .restart local v0    # "autoCorrection":Z
    :cond_4
    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    invoke-static {p1, v3, v4}, Lcom/nuance/android/compat/CorrectionSpan;->invokeSetUnderlineText(Landroid/text/TextPaint;IF)V

    goto :goto_3

    .line 338
    :cond_5
    if-eqz v0, :cond_0

    .line 341
    iget v3, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    iget v4, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-static {p1, v3, v4}, Lcom/nuance/android/compat/CorrectionSpan;->invokeSetUnderlineText(Landroid/text/TextPaint;IF)V

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 242
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpan;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "writeToParcel()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mLocaleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    sget-boolean v0, Lcom/nuance/android/compat/CorrectionSpan;->isSdk18:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 253
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 255
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Lcom/nuance/android/compat/CorrectionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 257
    return-void
.end method
