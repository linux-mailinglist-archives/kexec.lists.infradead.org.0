Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296691F83FE
	for <lists+kexec@lfdr.de>; Sat, 13 Jun 2020 17:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Subject:
	Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=dIhSM9ff4C7AiJlG6BKebj26Jj7abPn3r+poTMVxAog=; b=ZR
	WSmJy3Wk7hGPZ01yZOBmTjsr26iKhunLC6ncDVSedB12Tl3IyVf39PbRMMhKKJQq5g+fQmir3MOJ+
	8A8JBkvICrXSSz7xE1Yy3A0MjZqM8TOH8u5gOIHboksUz4YdOHJQXAeFu0f1DnWmt/lwrE12iyh1i
	8vV7KYNvYFw9L5Jvi7s/Dn8fMeqOIPasp6l3ZejGDujU/ojK41FC1jCSqH5C+lkpscucdA2s++hFj
	zup8tfr2j4C/eJVxI1YNqh9kptk6YwPY5KBucndw0tjFBAN881T21IlR+ATeOKysQtgKthOBxejrl
	FD9kbvekGS4+8PqEuaPDkCsZaaoA88AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk8Iq-0004Hv-OC; Sat, 13 Jun 2020 15:42:40 +0000
Received: from sonic309-24.consmr.mail.ir2.yahoo.com ([77.238.179.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk8Il-0004HY-8k
 for kexec@lists.infradead.org; Sat, 13 Jun 2020 15:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1592062947; bh=EdQ6J0sRRv3XBxt3j7IlulUVvRg4uKdicik//r5GkY8=;
 h=Date:From:To:Subject:References:From:Subject;
 b=V0ZP3hmkP49snnSe1VkcmCpo6ut4F+Qy/zbsF82z60qABxUnWOL5Wjax/6qUi9cjOAeLypfI3HKWxO41oUQ/gWkQVLnoEn22eotKzSwIlYYtlGO0jsZuoRY9W7Mpvb7YJKK+I8V0UXryQS9DFlwDp5HDm4nWRlHcnyoaaN3bC3boOn3zKZiVaz5aNR3EvsrxFqwvz3wsxY7UlGxjhybTGLcvHVBF8tdm5YfBFPQS+e/05HZsDT0JX+3Ukp+BucSRjXe8I0FjHVwYRPz/hH8Jy/OcCzMMlmcr0hH4JwLFWbpcTfuyHTPGjR+0Xbe/slTz3KakulIqa/NVJ/sm62d+Fg==
X-YMail-OSG: ABhXdfIVM1ktZvRLmN7hn6VaE7xXCO82cYJB2vOTQFNij0_8gnxZNgCDOlRQyO1
 M5722DJyFfkYHLeEHEmmxe23z1Mvn1FhXyD6tlpj_0HWEFjimGQDg_C2FPut6FeMm_yFAIF5YgTe
 WU750FHbM0pFtHfvkqHEcaeUWh9cRj1phT9_VLlzAOGlRfYDYx60zq1tO80QSRzIQbqYucoQp1Xi
 S_UBLDmyo4rMFDAQGo6qVqHrzLg2etU4iM79w2xWmUIQCVNq0kzGAwuYD1FR99ve6oszqmR_Z9Z_
 stbtFrq5VdyIoCE8X7hloTu25CJ2qqKkz8nsV3U8yT1sgIP8n3rpU2gWNDu0qQATri0wSvQrYkrk
 vew50AjWwqjoZSucd3uw75PXVKYJPzi7Dl1zcRFa_Vu0BV3tAFQu529YKuwa1JofrycogTQMOjvs
 97a8LdQaNTWkdwnZR78GMMM2ZiasuuSSSyeL6THBHoDI3DnW4HsscMsum975GnXIVuN8cUcLfXRL
 UhmQAOqohgekKz3k87ece9HUa_av_ONXIyFQuhdt.J3t1J_8ulT6ojBbUqzgqE.CsDTe7AXEr4Pn
 dVvrlwAAQcOlKri6a8xq6mfvX9mD5Tz.10XhUyhWgzIXXFsd0rA5z0eNJX6O3dqFrH_Qgac9Qu6E
 9ZBWQGf9h0k.pTxnDDWWDKPMpoCGltxY65Wa4r_IU4UTHX.TYigvZTWAozZ1f7WA_4vt9yeMFWCb
 sK9YCUr96MR0s09px0h8w2IvYSt4h5oxWoWJjmroYczzCV2Qbxtfn69oyPgiyJ5fBVC.tC.v_fln
 zRs9F7k..2lceuj_1A8gyN6pxpWhFDJuhI7rx2GaVNp8s9hCPUwS12vnMW7mYwRS_70c7NWyF4Pi
 NYaI22gc3NYE5KG9LPhEubrTZNUID9N0XVfkBveX602qRQE9lbFN62ncNFXIlShMhJ0q16wPs3ox
 9rHr4xOVA_JNb9AZykwsgthsm4WUO5zPmk8qR_XJIF8iImt215tOpUm2rfXvJy7nFXngJ.fVi6dW
 9JPhPhbglW50vy3JNKJd.v612TanqscOyrwGEAC9JJJZotYZZWaFZ6tcjacNim33w07SUjNft9Gi
 N0WraW2VxFJhSfFIqq.YpMtWT_KH5CaUmzUEPNk_JfsWYy2mhnjzf197tHUH7c.jaBUVcLhjZ5H.
 oApbsDJ9DkrgtORcxsaghuavzf2sp70PHWRKWfzoF42gumsFxlcnrAG0F30ldS6BePVQ1OSHOw09
 M.2s0KI3NGb9IigaP07YncP8BSacxclXIEwJ2ISPQ0g.G4mo5qlZS_SNoAHRQ0a26Hio-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ir2.yahoo.com with HTTP; Sat, 13 Jun 2020 15:42:27 +0000
Date: Sat, 13 Jun 2020 15:42:25 +0000 (UTC)
From: Rose Gomo <rose_gomoo101@yahoo.com>
To: rose_gomoo101@yahoo.com
Message-ID: <2011529051.456701.1592062945614@mail.yahoo.com>
Subject: Dear Good Friend.
MIME-Version: 1.0
References: <2011529051.456701.1592062945614.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16119 YMailNodin Mozilla/4.0 (compatible; MSIE 8.0;
 Windows NT 6.1; Trident/4.0; GTB7.5; SLCC2; .NET CLR 2.0.50727;
 .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_084235_441128_1E6DE297 
X-CRM114-Status: SPAM  (  -5.82  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [77.238.179.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rose_gomoo101[at]yahoo.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rose_gomoo101[at]yahoo.com]
 0.5 MILLION_HUNDRED        BODY: Million "One to Nine" Hundred
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [77.238.179.82 listed in wl.mailspike.net]
 0.0 LOTS_OF_MONEY          Huge... sums of money
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

RGVhciBHb29kIEZyaWVuZC4KClBsZWFzZSBjYW4geW91IGhlbHAgbWUgdG8gcmVjZWl2ZSB0aGUg
ZnVuZCBJIGluaGVyaXRlZCBmcm9tIG15IGZhdGhlciB0byB5b3VyIGFjY291bnQgaW4geW91ciBj
b3VudHJ5IGZvciBidXNpbmVzcyBpbnZlc3RtZW50PyBSaWdodCBub3cgdGhlIGZ1bmQgaXMgaW4g
dGhlIGJhbmsgaGVyZSB3aGVyZSBteSBmYXRoZXIgZGVwb3NpdGVkIGl0IGJlZm9yZSBoZSBkaWVk
IGFuZCB0aGUgYW1vdW50IGlzIOKCrDIuNW1pbGxpb24gRXVyb3MgKFR3byBNaWxsaW9uIEZpdmUg
SHVuZHJlZCBUaG91c2FuZCBFdXJvcykKClBsZWFzZSBpZiB5b3UgYXJlIGludGVyZXN0ZWQgeW91
IGNhbiBjb250YWN0IG1lIGFzIHNvb24gYXMgcG9zc2libGUgZm9yIG1vcmUgZGV0YWlscy4KCkJl
c3QgcmVnYXJkcwpSb3NlIEdvbW8uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
