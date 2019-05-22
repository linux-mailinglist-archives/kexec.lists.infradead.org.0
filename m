Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D5125EEE
	for <lists+kexec@lfdr.de>; Wed, 22 May 2019 10:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GYSWuCTY1Z5E8a2MgrbRk69tVdRG2BojyZfrKG7Ewoo=; b=UjTHaLIYyoVF5E
	VW+0P4CeFfn9oMbhkxtAOqovzVooSswzF73OwPQWKel68NzFzezKr40HUNLulxozxQqLARw/ksHsD
	KEn6v5J06C4jnLD/H9hjSsKteyXVW21aGyQKgh34iUBOEAFeenW8svamNePPF80+0alN96PUhqSOo
	eQPSC09xTyZWy0P83+pT6dDY3JJVJMsu4udkw0CWVoXVj8fm8Uigl1xwTycPDaa+nhjxYxw1QMPRM
	JSDdIq4NKyvIItRmxo4xIzacdAKz+CsKYhvz5FawS+hJN7t/Xcw7yd3qHRByjeYN8lfLJ1HBL7O4L
	h1GnH98Z2VXQO3WGnuzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMCC-0005Hi-Ot; Wed, 22 May 2019 08:01:56 +0000
Received: from mail.tastiess.eu ([194.182.86.235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMC3-00058U-MR
 for kexec@lists.infradead.org; Wed, 22 May 2019 08:01:50 +0000
Received: by mail.tastiess.eu (Postfix, from userid 1001)
 id 78935898E2; Wed, 22 May 2019 10:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tastiess.eu; s=mail;
 t=1558512092; bh=Pq3JAJM5iF8ICERSPFAm/P648K1IfJ1sBmhj3v1LJ9Q=;
 h=Date:From:To:Subject:From;
 b=WKtpPfMakYZ2QWl7bMK58SoRqk9u1tuL6AIQiCAqC15i9KtYRP+H03UAMFgsQetA+
 9W0Ydzo3eouS3kBjyLo/K6jmscqwOru9p2vsBmllcM5ZzTCTBTSDQLjS3Y564hX3aZ
 k7Dqq3N2Sp/Se+L1/YZ3yJ4GhrhTeTO62YM8sOf4=
Received: by mail.tastiess.eu for <kexec@lists.infradead.org>;
 Wed, 22 May 2019 08:01:20 GMT
Message-ID: <20190522091500-0.1.n.7p7.0.o2gdqq9urm@tastiess.eu>
Date: Wed, 22 May 2019 08:01:20 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <matyas@tastiess.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.tastiess.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_010148_109224_816344CD 
X-CRM114-Status: UNSURE (   1.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
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

w5xkdsO2emzDtm0hCgoyMDE5IGphbnXDoXJqw6F0w7NsIGplbGVudMWRc2VuIMOhdGFsYWt1bHQg
bWluZCBhIGp1dHRhdMOhc29rIGFkw7N6w6FzYSwgbWluZCBhIHBpYWNvbiBlbMOpcmhldMWRIGp1
dHRhdMOhc2kgdGVybcOpa2VrIGvDtnJlLiAgCgpBbWVubnlpYmVuIMOWbm5layBpcyBmZWp0w7Zy
w6lzdCBva296LCBtaXZlbCBww7N0b2xqYSBhIGtvcsOhYmJhbiBoYXN6bsOhbHQgRXJ6c8OpYmV0
IHV0YWx2w6FueXQsIGlzbWVyamUgbWVnIGvDoXJ0ecOhaW5rYXQgw6lzIHV0YWx2w6FueWFpbmth
dCwgbWVseWVrIGF6IMOWbiBjw6lnw6luZWsgaXMga8OtdsOhbMOzIGFsdGVybmF0w612w6F0IG55
w7pqdGhhdG5hay4KCkEgU1rDiVAga8OhcnR5w6Fob3oga8OpcGVzdCBqdXR0YXTDoXNpIGvDoXJ0
ecOhaW5rYXQgasOzdmFsIHN6w6lsZXNlYmIga8O2cmJlbiBoYXN6bsOhbGhhdGrDoWsga8OhcnR5
YWJpcnRva29zYWluayB0w7ZiYmVrIGvDtnrDtnR0IMOpbGVsbWlzemVyIHbDoXPDoXJsw6FzcmEs
IGVnw6lzenPDqWfDvGd5aSBzem9sZ8OhbHRhdMOhc29rcmEsIGVsZWt0cm9uaWthaSB0ZXJtw6lr
ZWtyZSwgw7xkw7xsw6lzcmUsIHRhbmtvbMOhc3JhIOKAkyBha8OhciBrw6lzenDDqW56ZmVsdsOp
dGVsaSBsZWhldMWRc8OpZ2dlbCBpcy4KClN6ZXJldG7DqSBtZWdpc21lcm5pLCBtaWx5ZW4gbGVo
ZXTFkXPDqWdla2V0IGvDrW7DoWx1bmsganV0dGF0w6FzaSB0ZXJtw6lrZWlua2tlbD8gIAoKCkth
cG9sY3MgTcOhdHnDoXMKSHVuZ2FyeSBUZWFtIExlYWRlciAgCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2tleGVjCg==
