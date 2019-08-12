.class Lcom/nuance/swypeconnect/ac/ACLanguageList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    }
.end annotation


# static fields
.field public static final ALPHA_CORE:I = 0x1

.field public static final CHINESE_CORE:I = 0x3

.field public static final JAPANESE_CORE:I = 0x4

.field public static final KOREAN_CORE:I = 0x2

.field private static languageCoreList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final languageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    const-string v8, "Afrikaans"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Afrikaans"

    const-string v2, "Afrikaans"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x136

    aput v5, v3, v4

    const-string v4, "AF"

    const-string v5, "af"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Albanian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Albanian"

    const-string v2, "Shqipe"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x11c

    aput v5, v3, v4

    const-string v4, "SQ"

    const-string v5, "sq"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Amharic"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Amharic"

    const-string v2, "\u12a0\u121b\u122d\u129b"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x144

    aput v5, v3, v4

    const-string v4, "AM"

    const-string v5, "am"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Arabic"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Arabic"

    const-string v2, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x101

    aput v5, v3, v4

    const-string v4, "AR"

    const-string v5, "ar"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Armenian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Armenian"

    const-string v2, "\u0540\u0561\u0575\u0565\u0580\u0565\u0576"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x15a

    aput v5, v3, v4

    const-string v4, "HY"

    const-string v5, "hy"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Assamese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Assamese"

    const-string v2, "\u0985\u09b8\u09ae\u09c0\u09af\u09bc\u09be"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x145

    aput v5, v3, v4

    const-string v4, "AS"

    const-string v5, "as"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Azerbaijani"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Azerbaijani"

    const-string v2, "Az\u0259rbaycanca"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x147

    aput v5, v3, v4

    const-string v4, "AZ"

    const-string v5, "az"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Basque"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Basque"

    const-string v2, "Euskara"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x12d

    aput v5, v3, v4

    const-string v4, "EU"

    const-string v5, "eu"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Belarusian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Belarusian"

    const-string v2, "\u0411\u0435\u043b\u0430\u0440\u0443\u0441\u043a\u0430\u044f"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x123

    aput v5, v3, v4

    const-string v4, "BE"

    const-string v5, "be"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Bengali"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Bengali"

    const-string v2, "\u09ac\u09be\u0982\u09b2\u09be"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x14b

    aput v5, v3, v4

    const-string v4, "BN"

    const-string v5, "bn"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Bosnian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Bosnian"

    const-string v2, "Bosanski"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x197

    aput v5, v3, v4

    const-string v4, "BS"

    const-string v5, "bs"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Bulgarian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Bulgarian"

    const-string v2, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x102

    aput v5, v3, v4

    const-string v4, "BG"

    const-string v5, "bg"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Burmese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Burmese"

    const-string v2, "\u1017\u1019\u102c\u1005\u1000\u102c\u1038"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16e

    aput v5, v3, v4

    const-string v4, "MY"

    const-string v5, "my"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Burmese_Zawgyi"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Burmese_Zawgyi"

    const-string v2, "\u103b\u1019\u1014\u1039\u1019\u102c\u1005\u102c (\u1031\u1007\u102c\u1039\u1002\u103a\u102e)"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c4

    aput v5, v3, v4

    const-string v4, "MY"

    const-string v5, "my-rMM"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Catalan"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Catalan"

    const-string v2, "Catal\u00e0"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x103

    aput v5, v3, v4

    const-string v4, "CA"

    const-string v5, "ca"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Chinese_CN"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Chinese_CN"

    const-string v2, "\u7b80\u4f53\u4e2d\u6587"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v4, "ZH"

    const-string v5, "zh-cn"

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Chinese_HK"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Chinese_HK"

    const-string v2, "\u7e41\u9ad4\u4e2d\u6587(\u9999\u6e2f"

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    const-string v4, "ZH"

    const-string v5, "zh-hk"

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Chinese_TW"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Chinese_TW"

    const-string v2, "\u7e41\u9ad4\u4e2d\u6587(\u53f0\u7063"

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    const-string v4, "ZH"

    const-string v5, "zh-tw"

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Croatian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Croatian"

    const-string v2, "Hrvatski"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x159

    aput v5, v3, v4

    const-string v4, "HR"

    const-string v5, "hr"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Czech"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Czech"

    const-string v2, "\u010ce\u0161tina"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x105

    aput v5, v3, v4

    const-string v4, "CS"

    const-string v5, "cs"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Danish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Danish"

    const-string v2, "Dansk"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x106

    aput v5, v3, v4

    const-string v4, "DA"

    const-string v5, "da"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Dutch"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Dutch"

    const-string v2, "Nederlands"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x113

    aput v5, v3, v4

    const-string v4, "NL"

    const-string v5, "nl"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Dutch_BE"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Dutch_BE"

    const-string v2, "Nederlands"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x813

    aput v5, v3, v4

    const-string v4, "NL"

    const-string v5, "nl-be"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "English"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "English"

    const-string v2, "English"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x109

    aput v5, v3, v4

    const-string v4, "EN"

    const-string v5, "en"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "English_UK"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "English_UK"

    const-string v2, "English UK"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x809

    aput v5, v3, v4

    const-string v4, "EN"

    const-string v5, "en-gb"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "English_Fake"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "English_Fake"

    const-string v2, "English Fake"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0xf009

    aput v5, v3, v4

    const-string v4, "EN"

    const-string v5, "en-gb"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Estonian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Estonian"

    const-string v2, "Eesti"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x125

    aput v5, v3, v4

    const-string v4, "ET"

    const-string v5, "et"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Farsi"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Farsi"

    const-string v2, "\u0641\u0627\u0631\u0633\u06cc"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x129

    aput v5, v3, v4

    const-string v4, "FA"

    const-string v5, "fa"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Finnish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Finnish"

    const-string v2, "Suomi"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10b

    aput v5, v3, v4

    const-string v4, "FI"

    const-string v5, "fi"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "French"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "French"

    const-string v2, "Fran\u00e7ais"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10c

    aput v5, v3, v4

    const-string v4, "FR"

    const-string v5, "fr"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "French_CA"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "French_CA"

    const-string v2, "Fran\u00e7ais"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xc0c

    aput v5, v3, v4

    const-string v4, "FR"

    const-string v5, "fr-ca"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "French_CH"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "French_CH"

    const-string v2, "Fran\u00e7ais"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x100c

    aput v5, v3, v4

    const-string v4, "FR"

    const-string v5, "fr-ch"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Galician"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Galician"

    const-string v2, "Galego"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x155

    aput v5, v3, v4

    const-string v4, "GL"

    const-string v5, "gl"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Georgian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Georgian"

    const-string v2, "\u10e5\u10d0\u10e0\u10d7\u10e3\u10da\u10d8"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x160

    aput v5, v3, v4

    const-string v4, "KA"

    const-string v5, "ka"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "German"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "German"

    const-string v2, "Deutsch"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x107

    aput v5, v3, v4

    const-string v4, "DE"

    const-string v5, "de"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "German_CH"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "German_CH"

    const-string v2, "Deutsch"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x807

    aput v5, v3, v4

    const-string v4, "DE"

    const-string v5, "de-ch"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Greek"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Greek"

    const-string v2, "\u0395\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x108

    aput v5, v3, v4

    const-string v4, "EL"

    const-string v5, "el"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Gujarati"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Gujarati"

    const-string v2, "\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x157

    aput v5, v3, v4

    const-string v4, "GU"

    const-string v5, "gu"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Hausa"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Hausa"

    const-string v2, "Hausa"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x158

    aput v5, v3, v4

    const-string v4, "HA"

    const-string v5, "ha"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Hebrew"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Hebrew"

    const-string v2, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10d

    aput v5, v3, v4

    const-string v4, "HE"

    const-string v5, "he"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Hindi"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Hindi"

    const-string v2, "\u0939\u093f\u0902\u0926\u0940"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x139

    aput v5, v3, v4

    const-string v4, "HI"

    const-string v5, "hi"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Hinglish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Hinglish"

    const-string v2, "Hinglish"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1d0

    aput v5, v3, v4

    const-string v4, "HL"

    const-string v5, "hi"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Hungarian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Hungarian"

    const-string v2, "Magyar"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10e

    aput v5, v3, v4

    const-string v4, "HU"

    const-string v5, "hu"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Icelandic"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Icelandic"

    const-string v2, "\u00cdslenska"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10f

    aput v5, v3, v4

    const-string v4, "IS"

    const-string v5, "is"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Igbo"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Igbo"

    const-string v2, "As\u1ee5s\u1ee5 Igbo"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x195

    aput v5, v3, v4

    const-string v4, "IG"

    const-string v5, "ig"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Indonesian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Indonesian"

    const-string v2, "Bahasa Indonesia"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x121

    aput v5, v3, v4

    const-string v4, "ID"

    const-string v5, "id"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Irish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Irish"

    const-string v2, "Gaeilge"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x154

    aput v5, v3, v4

    const-string v4, "GA"

    const-string v5, "ga"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Italian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Italian"

    const-string v2, "Italiano"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x110

    aput v5, v3, v4

    const-string v4, "IT"

    const-string v5, "it"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Italian_CH"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Italian_CH"

    const-string v2, "Italiano"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x810

    aput v5, v3, v4

    const-string v4, "IT"

    const-string v5, "it-ch"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Japanese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Japanese"

    const-string v2, "\u65e5\u672c\u8a9e"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x111

    aput v5, v3, v4

    const-string v4, "JA"

    const-string v5, "ja"

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Javanese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Javanese"

    const-string v2, "Basa Jawa"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x15f

    aput v5, v3, v4

    const-string v4, "JV"

    const-string v5, "jv"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Kannada"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Kannada"

    const-string v2, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x163

    aput v5, v3, v4

    const-string v4, "KN"

    const-string v5, "kn"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Kashmiri"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Kashmiri"

    const-string v2, "\u0643\u0634\u0645\u064a\u0631\u064a\u200e"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x164

    aput v5, v3, v4

    const-string v4, "KS"

    const-string v5, "ks"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Kazakh"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Kazakh"

    const-string v2, "\u049a\u0430\u0437\u0430\u049b"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x161

    aput v5, v3, v4

    const-string v4, "KK"

    const-string v5, "kk"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Khmer"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Khmer"

    const-string v2, "\u1797\u17b6\u179f\u17b6\u1781\u17d2\u1798\u17c2\u179a"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x12c

    aput v5, v3, v4

    const-string v4, "KM"

    const-string v5, "km"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Kirghiz"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Kirghiz"

    const-string v2, "\u041a\u044b\u0440\u0433\u044b\u0437"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x166

    aput v5, v3, v4

    const-string v4, "KY"

    const-string v5, "ky"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Korean"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Korean"

    const-string v2, "\ud55c\uad6d\uc5b4"

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    const-string v4, "KO"

    const-string v5, "ko"

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Lao"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Lao"

    const-string v2, "\u0e9e\u0eb2\u0eaa\u0eb2\u0ea5\u0eb2\u0ea7"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x12b

    aput v5, v3, v4

    const-string v4, "LO"

    const-string v5, "lo"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Latvian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Latvian"

    const-string v2, "Latvie\u0161u"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x126

    aput v5, v3, v4

    const-string v4, "LV"

    const-string v5, "lv"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Lingala"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Lingala"

    const-string v2, "Ling\u00e1la"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x168

    aput v5, v3, v4

    const-string v4, "LN"

    const-string v5, "ln"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Lithuanian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Lithuanian"

    const-string v2, "Lietuvi\u0161kai"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x127

    aput v5, v3, v4

    const-string v4, "LT"

    const-string v5, "lt"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Macedonian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Macedonian"

    const-string v2, "\u041c\u0430\u043a\u0435\u0434\u043e\u043d\u0441\u043a\u0438"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x12f

    aput v5, v3, v4

    const-string v4, "MK"

    const-string v5, "mk"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Malagasy"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Malagasy"

    const-string v2, "Malagasy"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x169

    aput v5, v3, v4

    const-string v4, "MG"

    const-string v5, "mg"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Malay"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Malay"

    const-string v2, "Bahasa Malaysia"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x13e

    aput v5, v3, v4

    const-string v4, "MS"

    const-string v5, "ms"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Malayalam"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Malayalam"

    const-string v2, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16a

    aput v5, v3, v4

    const-string v4, "ML"

    const-string v5, "ml"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Marathi"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Marathi"

    const-string v2, "\u092e\u0930\u093e\u0920\u0940"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16d

    aput v5, v3, v4

    const-string v4, "MR"

    const-string v5, "mr"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Mongolian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Mongolian"

    const-string v2, "\u043c\u043e\u043d\u0433\u043e\u043b"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16b

    aput v5, v3, v4

    const-string v4, "MN"

    const-string v5, "mn-mn"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "MongolianChina"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "MongolianChina"

    const-string v2, "\u182e\u1823\u1828\u182d\u182d\u1823\u182f"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c3

    aput v5, v3, v4

    const-string v4, "MN"

    const-string v5, "mn-cn"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Nepali"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Nepali"

    const-string v2, "\u0928\u0947\u092a\u093e\u0932\u0940"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x170

    aput v5, v3, v4

    const-string v4, "NE"

    const-string v5, "ne"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Norwegian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Norwegian"

    const-string v2, "Norsk"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x114

    aput v5, v3, v4

    const-string v4, "NO"

    const-string v5, "no"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Oriya"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Oriya"

    const-string v2, "\u0b13\u0b21\u0b3c\u0b3f\u0b06"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x173

    aput v5, v3, v4

    const-string v4, "OR"

    const-string v5, "or"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Pashto"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Pashto"

    const-string v2, "\u067e\u069a\u062a\u0648"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x175

    aput v5, v3, v4

    const-string v4, "PS"

    const-string v5, "ps"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Polish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Polish"

    const-string v2, "Polski"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x115

    aput v5, v3, v4

    const-string v4, "PL"

    const-string v5, "pl"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Portuguese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Portuguese"

    const-string v2, "Portugu\u00eas"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x116

    aput v5, v3, v4

    const-string v4, "PT"

    const-string v5, "pt"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Portuguese_PT"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Portuguese_PT"

    const-string v2, "Portugu\u00eas"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x816

    aput v5, v3, v4

    const-string v4, "PT"

    const-string v5, "pt-pt"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Punjabi"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Punjabi"

    const-string v2, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x174

    aput v5, v3, v4

    const-string v4, "PA"

    const-string v5, "pa"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Romanian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Romanian"

    const-string v2, "Rom\u00e2n\u0103"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x118

    aput v5, v3, v4

    const-string v4, "RO"

    const-string v5, "ro"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Russian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Russian"

    const-string v2, "Pycc\u0138\u0438\u0439"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x119

    aput v5, v3, v4

    const-string v4, "RU"

    const-string v5, "ru"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Serbian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Serbian"

    const-string v2, "Srpski"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x180

    aput v5, v3, v4

    const-string v4, "SR"

    const-string v5, "sr"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SerbianCyrillic"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "SerbianCyrillic"

    const-string v2, "\u0421\u0440\u043f\u0441\u043a\u0438"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c0

    aput v5, v3, v4

    const-string v4, "SR"

    const-string v5, "sr"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Sesotho"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Sesotho"

    const-string v2, "Sesotho"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x182

    aput v5, v3, v4

    const-string v4, "ST"

    const-string v5, "st"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Sinhala"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Sinhala"

    const-string v2, "\u0dc3\u0dd2\u0d82\u0dc4\u0dbd"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x17c

    aput v5, v3, v4

    const-string v4, "SI"

    const-string v5, "si"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Slovak"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Slovak"

    const-string v2, "Sloven\u010dina"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x11b

    aput v5, v3, v4

    const-string v4, "SK"

    const-string v5, "sk"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Slovenian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Slovenian"

    const-string v2, "Sloven\u0161\u010dina"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x124

    aput v5, v3, v4

    const-string v4, "SL"

    const-string v5, "sl"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Spanish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Spanish"

    const-string v2, "Espa\u00f1ol"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10a

    aput v5, v3, v4

    const-string v4, "ES"

    const-string v5, "es"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Sundanese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Sundanese"

    const-string v2, "Basa Sunda"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x199

    aput v5, v3, v4

    const-string v4, "SU"

    const-string v5, "su"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Swahili"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Swahili"

    const-string v2, "Kiswahili"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x141

    aput v5, v3, v4

    const-string v4, "SW"

    const-string v5, "sw"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Swedish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Swedish"

    const-string v2, "Svenska"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x11d

    aput v5, v3, v4

    const-string v4, "SV"

    const-string v5, "sv"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Tagalog"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Tagalog"

    const-string v2, "Tagalog"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x189

    aput v5, v3, v4

    const-string v4, "TL"

    const-string v5, "tl"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Tajik"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Tajik"

    const-string v2, "\u0442\u043e\u04b7\u0438\u043a\u04e3"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x186

    aput v5, v3, v4

    const-string v4, "TG"

    const-string v5, "tg"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Tamil"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Tamil"

    const-string v2, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x184

    aput v5, v3, v4

    const-string v4, "TA"

    const-string v5, "ta"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Telugu"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Telugu"

    const-string v2, "\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x185

    aput v5, v3, v4

    const-string v4, "TE"

    const-string v5, "te"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Thai"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Thai"

    const-string v2, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x11e

    aput v5, v3, v4

    const-string v4, "TH"

    const-string v5, "th"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Tibetan"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Tibetan"

    const-string v2, "\u0f56\u0f7c\u0f51\u0f0b\u0f61\u0f72\u0f42"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x14c

    aput v5, v3, v4

    const-string v4, "BO"

    const-string v5, "bo"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Turkish"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Turkish"

    const-string v2, "T\u03cbrk\u00e7e"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x11f

    aput v5, v3, v4

    const-string v4, "TR"

    const-string v5, "tr"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Turkmen"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Turkmen"

    const-string v2, "T\u00fcrkmen"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x188

    aput v5, v3, v4

    const-string v4, "TK"

    const-string v5, "tk"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Ukrainian"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Ukrainian"

    const-string v2, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x122

    aput v5, v3, v4

    const-string v4, "UK"

    const-string v5, "uk"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Urdu"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Urdu"

    const-string v2, "\u0627\u0631\u062f\u0648"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x120

    aput v5, v3, v4

    const-string v4, "UR"

    const-string v5, "ur"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Uzbek"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Uzbek"

    const-string v2, "\u040e\u0437\u0431\u0435\u043a"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18f

    aput v5, v3, v4

    const-string v4, "UZ"

    const-string v5, "uz"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "UzbekLatin"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "UzbekLatin"

    const-string v2, "O\'zbek"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c2

    aput v5, v3, v4

    const-string v4, "UZ"

    const-string v5, "uz-uz"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Vietnamese"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Vietnamese"

    const-string v2, "Ti\u1ebfng Vi\u00ea\u0323t"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x12a

    aput v5, v3, v4

    const-string v4, "VI"

    const-string v5, "vi"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Welsh"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Welsh"

    const-string v2, "Cymraeg"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x14f

    aput v5, v3, v4

    const-string v4, "CY"

    const-string v5, "cy"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Xhosa"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Xhosa"

    const-string v2, "IsiXhosa"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x134

    aput v5, v3, v4

    const-string v4, "XH"

    const-string v5, "xh"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Yoruba"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Yoruba"

    const-string v2, "Yor\u00f9b\u00e1"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x193

    aput v5, v3, v4

    const-string v4, "YO"

    const-string v5, "yo"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Zulu"

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    const-string v1, "Zulu"

    const-string v2, "IsiZulu"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x135

    aput v5, v3, v4

    const-string v4, "ZU"

    const-string v5, "zu"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xe1
        0x5e1
    .end array-data

    :array_1
    .array-data 4
        0xe2
        0x6e2
        0x5e2
    .end array-data

    :array_2
    .array-data 4
        0xe0
        0x5e0
        0x6e0
    .end array-data

    :array_3
    .array-data 4
        0x112
        0x712
        0x812
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLanguageByLanguageId(I)Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    .locals 3

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getXT9Id()I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findLanguageIdByFullLangCode(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getXT9Id()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;

    move-result-object v1

    aget-object v4, v2, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getXT9Id()I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static findLanguageNameById(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getXT9Id()I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChineseLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->access$300(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static declared-synchronized getLanguageCoreMap()Ljava/util/HashMap;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v3, Lcom/nuance/swypeconnect/ac/ACLanguageList;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageCoreList:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageCoreList:Ljava/util/HashMap;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->access$200(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)[I

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget v1, v5, v2

    sget-object v7, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageCoreList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getCore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageCoreList:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static getLanguageList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageList;->languageList:Ljava/util/Map;

    return-object v0
.end method
