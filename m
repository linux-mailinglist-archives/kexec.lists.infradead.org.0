Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C222AFC66B
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 13:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNPzuZ2Yus+zDSQNutmr+nHpVSaceLNhNSpm5jWKtRM=; b=tbE/Ek1xAwgXJB
	zMHsC+viAMpOM/5jPVqgUsVGXm1XViVDB1xT1MV78JLYMn/5td17/FTA18nVWlvFl0KFcA7bkXSI+
	vS+PWW5snfNd+kuQmQH1HmDOWaJ0zpHhMyoAIqqyRw6LivNuVPUW60fGwGr0GZJ/ems2z1hfTlAwa
	JaM/XDTh3SxPkEH+v4GLg2xwOSn0UEtc4H6ZplG9+yo1L90mgB2Gs/yHKBXuRIdILEbKyGe13V8ad
	ubhgj4yItmnpLb+DPC2+xUeeaiZQNnXeIp5Na9TxH2uWvj8WtRCSN0bdoFOMsqm5cpqowMBqy29+g
	0NPqqK+nOfn2N+X1WVOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEPR-00050c-Cy; Thu, 14 Nov 2019 12:39:37 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEPN-0004ok-Si
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 12:39:36 +0000
Received: from zn.tnic (p200300EC2F15E200B4C5AF24BE56B25A.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f15:e200:b4c5:af24:be56:b25a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D28681EC0B7A;
 Thu, 14 Nov 2019 13:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1573735165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j4j6rmVxFfDJZKk6jcTn3vOttBjEGTLRErAikwgc27A=;
 b=IuUuIkAPLkD1yQxAnzZ40CcwE9xTT2Ik6BhArfh7AI8oB7QRillk0U/SIBlFgVJTGAVjT8
 uSnNpqbu9nCsvsdptznJ1Jq4iybiZ2BWi9FpOXvLBDjL9pFTIMyjn1pCZ8xLeD8EYMnYB0
 4if61EIrJZg8NL9r26J1nsq7VBFlh/8=
Date: Thu, 14 Nov 2019 13:39:20 +0100
From: Borislav Petkov <bp@alien8.de>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 3/3 v9] kexec: Fix i386 build warnings that missed
 declaration of struct kimage
Message-ID: <20191114123920.GA7222@zn.tnic>
References: <20191108090027.11082-1-lijiang@redhat.com>
 <20191108090027.11082-4-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108090027.11082-4-lijiang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_043934_095656_61F8763F 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMDU6MDA6MjdQTSArMDgwMCwgTGlhbmJvIEppYW5nIHdy
b3RlOgo+IEtidWlsZCB0ZXN0IHJvYm90IHJlcG9ydGVkIHNvbWUgYnVpbGQgd2FybmluZ3MgYXMg
Zm9sbG93Ogo+IAo+IGFyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmg6NTozMjogd2FybmluZzog
J3N0cnVjdCBraW1hZ2UnIGRlY2xhcmVkCj4gaW5zaWRlIHBhcmFtZXRlciBsaXN0IHdpbGwgbm90
IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlzIGRlZmluaXRpb24KPiBvciBkZWNsYXJhdGlvbgo+
ICAgICBpbnQgY3Jhc2hfbG9hZF9zZWdtZW50cyhzdHJ1Y3Qga2ltYWdlICppbWFnZSk7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPiAgICAgaW50IGNyYXNoX2Nv
cHlfYmFja3VwX3JlZ2lvbihzdHJ1Y3Qga2ltYWdlICppbWFnZSk7Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fgo+ICAgICBpbnQgY3Jhc2hfc2V0dXBfbWVt
bWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4gVGhlICdzdHJ1Y3Qga2ltYWdlJyBpcyBkZWZp
bmVkIGluIHRoZSBoZWFkZXIgZmlsZSBpbmNsdWRlL2xpbnV4L2tleGVjLmgsCj4gYmVmb3JlIHVz
aW5nIGl0LCBuZWVkIHRvIGluY2x1ZGUgaXRzIGhlYWRlciBmaWxlIG9yIG1ha2UgYSBkZWNsYXJh
dGlvbi4KPiBPdGhlcndpc2UgdGhlIGFib3ZlIHdhcm5pbmdzIG1heSBiZSB0cmlnZ2VyZWQuCj4g
Cj4gQWRkIGEgZGVjbGFyYXRpb24gb2Ygc3RydWN0IGtpbWFnZSB0byB0aGUgZmlsZSBhcmNoL3g4
Ni9pbmNsdWRlL2FzbS8KPiBjcmFzaC5oLCB0aGF0IHdpbGwgc29sdmUgdGhlc2UgY29tcGlsZSB3
YXJuaW5ncy4KPiAKPiBGaXhlczogZGQ1ZjcyNjA3NmNjICgia2V4ZWM6IHN1cHBvcnQgZm9yIGtl
eGVjIG9uIHBhbmljIHVzaW5nIG5ldyBzeXN0ZW0gY2FsbCIpCgpUaGlzIGlzLCBvZiBjb3Vyc2Us
IHdyb25nLiBZb3VyICpmaXJzdCogcGF0Y2ggaXMgaW50cm9kdWNpbmcgdGhvc2UKd2FybmluZ3Mg
YW5kIEknbSB3b25kZXJpbmcgaG93IGRpZCB5b3Ugbm90IHNlZSB0aGVtIGR1cmluZyBidWlsZGlu
Zz8KCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBhcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmM6MTE6Ci4v
YXJjaC94ODYvaW5jbHVkZS9hc20vY3Jhc2guaDo1OjMyOiB3YXJuaW5nOiDigJhzdHJ1Y3Qga2lt
YWdl4oCZIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxl
IG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uCiAgICA1IHwgaW50IGNy
YXNoX2xvYWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwogICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFz
aC5oOjY6Mzc6IHdhcm5pbmc6IOKAmHN0cnVjdCBraW1hZ2XigJkgZGVjbGFyZWQgaW5zaWRlIHBh
cmFtZXRlciBsaXN0IHdpbGwgbm90IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlzIGRlZmluaXRp
b24gb3IgZGVjbGFyYXRpb24KICAgIDYgfCBpbnQgY3Jhc2hfY29weV9iYWNrdXBfcmVnaW9uKHN0
cnVjdCBraW1hZ2UgKmltYWdlKTsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBefn5+fn4KLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oOjc6Mzk6IHdhcm5p
bmc6IOKAmHN0cnVjdCBraW1hZ2XigJkgZGVjbGFyZWQgaW5zaWRlIHBhcmFtZXRlciBsaXN0IHdp
bGwgbm90IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlzIGRlZmluaXRpb24gb3IgZGVjbGFyYXRp
b24KICAgIDcgfCBpbnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAq
aW1hZ2UsCiAgICAgIHwKCgpBbmQgdGhhdCBoYXBwZW5zIGJlY2F1c2UgeW91J3ZlIGluY2x1ZGVk
IGFzbS9jcmFzaC5oIGluCmFyY2gveDg2L3JlYWxtb2RlL2luaXQuYyBhbmQgaXQgb2YgY291cnNl
IGNvbXBsYWlucyBiZWNhdXNlIGl0IGhhc24ndApzZWVuIHRoYXQgc3RydWN0IHlldC4KCi0tIApS
ZWdhcmRzL0dydXNzLAogICAgQm9yaXMuCgpodHRwczovL3Blb3BsZS5rZXJuZWwub3JnL3RnbHgv
bm90ZXMtYWJvdXQtbmV0aXF1ZXR0ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
