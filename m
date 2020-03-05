Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7503117A372
	for <lists+kexec@lfdr.de>; Thu,  5 Mar 2020 11:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:From:
	Date:Reply-To:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IyAL8tauX5khA4PiIR436QFJEZKY+Wo6oWw4IsY8hFU=; b=tjnvKX378EtLe6
	lu8CwcbH/1eIlz+CMBrHPtQrCC2J6fFFwZ/cZBhmITU/P81lPeRhkOZJKWlIntgBwdnnvZaZGoAJq
	jCNYy859cKh14X1YBvmJcaZPrMbXeF6xtxDnHr2qv7FwrTezVcf6BEyNwqIkUm88oDzscZBdTkb44
	to/M5zyr+lhAmb0AYQsLdBeuOdgW4M0Vx/hZ3460VMWQh9hh6fni8193J21i+2jBhO/PRMAR83Rlq
	9tS6uXiyo7Dfl3mCrO8UExDM7YuHPJz46GUja9k8D9mjbdCuI7AJyn3ZNHPD+aEEn1+iQYeFDA4C+
	Sr+32fCk7AYVdlbRhwfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9o7a-0006M4-DW; Thu, 05 Mar 2020 10:52:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9o7Y-0006Lm-Ca
 for kexec@bombadil.infradead.org; Thu, 05 Mar 2020 10:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:Message-ID:From:Date:Sender:Reply-To:To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=RC75T5p3JPNk7JUNB+lH0UfaFQO1Ac584gPL3SIL6h8=; b=DsvwirUqGfpI58mGAXtbigg8Cn
 zY4kRLOBMf0XAX6C7xcJ2EtiIp+UjeoyonL6QoRRtsSXszcCPyScssG7lQ1hz/D1AFgQV3fQVY0Hw
 ObC5teQEhwRDUaJ86jtQVM7vyhcGFxeFu/OybDZQOT6V0o5AXioAufJEBXpNrqNPfxFKoVc34kuIi
 VPdTQlWCU+woblG2PiIWm8PS0oX4hixL9PhfP7aJY7Y98d+kURs/q3i63SaB7cJOqN9Ej5dzjBEo+
 fcpslABm3zoClU9lYwzlKZH+CMuFdr0tmYBt7z78Nzx43pqwrwQwj1W3lQLarepRsrZ3wAgGKil6c
 5EOJHkEw==;
Received: from ulan.pagasa.dost.gov.ph ([202.90.128.205]
 helo=mailgw.pagasa.dost.gov.ph)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9o7T-0006Lu-BI
 for kexec@lists.infradead.org; Thu, 05 Mar 2020 10:52:51 +0000
Received: from webmail.pagasa.dost.int ([10.10.11.8])
 by mailgw.pagasa.dost.gov.ph  with ESMTP id 025AnjMw006560-025AnjN0006560
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Mar 2020 18:49:45 +0800
Received: from localhost (localhost [127.0.0.1])
 by webmail.pagasa.dost.int (Postfix) with ESMTP id 848F02981B86;
 Thu,  5 Mar 2020 18:43:19 +0800 (PST)
Received: from webmail.pagasa.dost.int ([127.0.0.1])
 by localhost (webmail.pagasa.dost.int [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id iNu9OfE5kZcx; Thu,  5 Mar 2020 18:43:19 +0800 (PST)
Received: from localhost (localhost [127.0.0.1])
 by webmail.pagasa.dost.int (Postfix) with ESMTP id B90C52981B48;
 Thu,  5 Mar 2020 18:43:18 +0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 webmail.pagasa.dost.int B90C52981B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pagasa.dost.gov.ph;
 s=96B9A03E-48B0-11EA-A7E8-92F42F537CE2; t=1583404998;
 bh=RC75T5p3JPNk7JUNB+lH0UfaFQO1Ac584gPL3SIL6h8=;
 h=Date:From:Message-ID:MIME-Version;
 b=i5UkMgZtH7SoKrrmZeG4L0eYT9Ug1Lq/bsiVStJoSXr9sVUdg434XRsbw+cx1Iizr
 YEG/mPu6YrOIei4y0YFYSH8oYrwbTYQd5vA7crwOWe6UtaVxMFmavIEzKtliYwPIWT
 bxhUQmkiODaGyYj6DrEuyd222kx40iyCc6C9ITKo=
X-Virus-Scanned: amavisd-new at pagasa.dost.int
Received: from webmail.pagasa.dost.int ([127.0.0.1])
 by localhost (webmail.pagasa.dost.int [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cE0cByusd-ew; Thu,  5 Mar 2020 18:43:18 +0800 (PST)
Received: from webmail.pagasa.dost.int (webmail.pagasa.dost.int [10.11.1.8])
 by webmail.pagasa.dost.int (Postfix) with ESMTP id 3DBEB2981B10;
 Thu,  5 Mar 2020 18:43:17 +0800 (PST)
Date: Thu, 5 Mar 2020 18:43:17 +0800 (PST)
From: "Juanito S. Galang" <juanito.galang@pagasa.dost.gov.ph>
Message-ID: <1907161523.3574945.1583404997226.JavaMail.zimbra@pagasa.dost.gov.ph>
Subject: 
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.15_GA_3899 (ZimbraWebClient - GC79 (Win)/8.8.15_GA_3895)
Thread-Index: SZ7MY2jMKs/qcT/kYa55SVDyLt9UwA==
Thread-Topic: 
X-FEAS-DKIM: Valid
Authentication-Results: mailgw.pagasa.dost.gov.ph;
 dkim=pass header.i=@pagasa.dost.gov.ph
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_105248_642721_3D5CBAD4 
X-CRM114-Status: UNSURE (  -0.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

CgpIZXJ6bGljaGVuIEdsw7xja3d1bnNjaCBMaWViZXIgQmVnw7xuc3RpZ3RlcixTaWUgZXJoYWx0
ZW4gZGllc2UgRS1NYWlsIHZvbiBkZXIgUm9iZXJ0IEJhaWxleSBGb3VuZGF0aW9uLiBJY2ggYmlu
IGVpbiBwZW5zaW9uaWVydGVyIFJlZ2llcnVuZ3Nhbmdlc3RlbGx0ZXIgYXVzIEhhcmxlbSB1bmQg
ZWluIEdld2lubmVyIGRlcyBQb3dlcmJhbGwgTG90dGVyeSBKYWNrcG90IGltIFdlcnQgdm9uIDM0
Myw4IE1pbGxpb25lbiBVUy1Eb2xsYXIuIEljaCBiaW4gZGVyIGdyw7bDn3RlIEphY2twb3QtR2V3
aW5uZXIgaW4gZGVyIEdlc2NoaWNodGUgZGVyIE5ldyBZb3JrZXIgTG90dGVyaWUgaW0gVVMtQnVu
ZGVzc3RhYXQgQW1lcmlrYS4gSWNoIGhhYmUgZGllc2UgTG90dGVyaWUgYW0gMjcuIE9rdG9iZXIg
MjAxOCBnZXdvbm5lbiB1bmQgbcO2Y2h0ZSBTaWUgZGFyw7xiZXIgaW5mb3JtaWVyZW4sIGRhc3Mg
R29vZ2xlIGluIFp1c2FtbWVuYXJiZWl0IG1pdCBNaWNyb3NvZnQgSWhyZSAiRS1NYWlsLUFkcmVz
c2UiIGF1ZiBtZWluZSBCaXR0ZSwgZWluZW4gU3BlbmRlbmJldHJhZyB2b24gMy4wMDAuMDAwLDAw
IE1pbGxpb25lbiBFdXJvIHp1IGVyaGFsdGVuLCDDvGJlcm1pdHRlbHQgaGF0LiBJY2ggc3BlbmRl
IGRpZXNlIDMgTWlsbGlvbmVuIEV1cm8gYW4gU2llLCB1bSBkZW4gV29obHTDpHRpZ2tlaXRzaGVp
bWVuIHVuZCBhcm1lbiBNZW5zY2hlbiBpbiBJaHJlciBHZW1laW5kZSB6dSBoZWxmZW4sIGRhbWl0
IHdpciBkaWUgV2VsdCBmw7xyIGFsbGUgdmVyYmVzc2VybiBrw7ZubmVuLldlaXRlcmUgSW5mb3Jt
YXRpb25lbiBmaW5kZW4gU2llIGF1ZiBkZXIgZm9sZ2VuZGVuIFdlYnNpdGUsIGRhbWl0IFNpZSBu
aWNodCBza2VwdGlzY2ggc2luZApEaWVzZSBTcGVuZGUgdm9uIDMgTWlvLiBFVVIuaHR0cHM6Ly9u
eXBvc3QuY29tLzIwMTgvMTEvMTQvbWVldC10aGUtd2lubmVyLW9mLXRoZS1iaWdnZXN0LWxvdHRl
cnktamFja3BvdC1pbi1uZXcteW9yay1oaXN0b3J5L1NpZSBrw7ZubmVuIGF1Y2ggbWVpbiBZb3VU
dWJlIGbDvHIgbWVociBCZXN0w6R0aWd1bmcgYXVmcGFzc2VuOgpodHRwczovL3d3dy55b3V0dWJl
LmNvbS93YXRjaD92PUg1dlQxOFlzYXZjCkJpdHRlIGJlYWNodGVuIFNpZSwgZGFzcyBhbGxlIEFu
dHdvcnRlbiBhbiAocm9iZXJ0ZG9uYXRpb243QGdtYWlsLmNvbcKgICkgZ2VzZW5kZXQgd2VyZGVu
LCBkYW1pdCB3aXIgZGFzIGvDtm5uZW4KRmFocmVuIFNpZSBmb3J0LCB1bSBkYXMgZ2VzcGVuZGV0
ZSBHZWxkIGFuIFNpZSB6dSDDvGJlcndlaXNlbi5FLU1haWw6IHJvYmVydGRvbmF0aW9uN0BnbWFp
bC5jb21GcmV1bmRsaWNoZSBHcsO8w59lLApSb2JlcnQgQmFpbGV5CiogKiAqICogKiAqICogKiAq
ICogKiAqICogKiAqICoKUG93ZXJiYWxsIEphY2twb3QgR2V3aW5uZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhl
Y0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8va2V4ZWMK
