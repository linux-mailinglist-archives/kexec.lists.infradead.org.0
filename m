Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31585FC8D0
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 15:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fw3bAgn5D77UxxYVZbb407PEJgJRXxiT1YGxtAsWAik=; b=o8/mn4JZ4vtCUp
	aVuPCMbWXnzMaGl8pyQ0NS8CGLypqxSJoz6KUdLml4BbhvHEll11udATl40/I/1T4OmBsy3YLmD7o
	OwcSuRj6U6xvsfn/WaJIIGkmO2ytDxf4H26B/eerl+8vfwV7caq6yV8WZG4Xr9ePnJzrx36JW2Rk0
	GOmVKkNoi2/pANV2+F2E29AQVGbgOa2LmqnYFaDCJjZR6v+ZkDgDs2edI8WBD8c9hbs6bBwYTN1BW
	nFRCO/qt+eFAGUyEuYrZ616DB/zJ8ULXLbZ1Ff0FtFDBipnYyZj0TVKUO/0M6KBmzor+54Uhvi96W
	74Rrzs1kmSxbB/5rSgog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVG1e-0007ub-J8; Thu, 14 Nov 2019 14:23:10 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVG1b-0007u2-7d
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 14:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573741384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zFtzaw5LIVkMmAtq7/jfIOHBlZTiY/lff0QrVR0Mkqs=;
 b=d26MunHrmg+Fazvlu0YGwqEGIikEH0wFCRJhxS/DZWGkLeHcLFsxChdTQV27wbuihfmJmm
 iUnkCaOn8ELkPr1Uh1B1Lmn5dqdfx5kcROg+irOdqWLdVXDf+N3kvDHwNtO36Bv6vm4VYr
 51/hw4ejRxS0q/bA7+717cJJMrV7EI8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-ntacfLsrMyuJS8Oe8XRaFQ-1; Thu, 14 Nov 2019 09:20:58 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B040107B7D5;
 Thu, 14 Nov 2019 14:20:55 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-76.pek2.redhat.com [10.72.12.76])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 106E7610E5;
 Thu, 14 Nov 2019 14:20:45 +0000 (UTC)
Subject: Re: [PATCH 3/3 v9] kexec: Fix i386 build warnings that missed
 declaration of struct kimage
To: Borislav Petkov <bp@alien8.de>
References: <20191108090027.11082-1-lijiang@redhat.com>
 <20191108090027.11082-4-lijiang@redhat.com> <20191114123920.GA7222@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <59fbd119-495a-4d00-9738-98c22b276c1f@redhat.com>
Date: Thu, 14 Nov 2019 22:20:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191114123920.GA7222@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: ntacfLsrMyuJS8Oe8XRaFQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_062307_347701_B4DB2838 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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

5ZyoIDIwMTnlubQxMeaciDE05pelIDIwOjM5LCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IEZyaSwgTm92IDA4LCAyMDE5IGF0IDA1OjAwOjI3UE0gKzA4MDAsIExpYW5ibyBKaWFuZyB3cm90
ZToKPj4gS2J1aWxkIHRlc3Qgcm9ib3QgcmVwb3J0ZWQgc29tZSBidWlsZCB3YXJuaW5ncyBhcyBm
b2xsb3c6Cj4+Cj4+IGFyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmg6NTozMjogd2FybmluZzog
J3N0cnVjdCBraW1hZ2UnIGRlY2xhcmVkCj4+IGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5v
dCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uCj4+IG9yIGRlY2xhcmF0aW9u
Cj4+ICAgICBpbnQgY3Jhc2hfbG9hZF9zZWdtZW50cyhzdHJ1Y3Qga2ltYWdlICppbWFnZSk7Cj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4+ICAgICBpbnQgY3Jh
c2hfY29weV9iYWNrdXBfcmVnaW9uKHN0cnVjdCBraW1hZ2UgKmltYWdlKTsKPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fgo+PiAgICAgaW50IGNyYXNoX3Nl
dHVwX21lbW1hcF9lbnRyaWVzKHN0cnVjdCBraW1hZ2UgKmltYWdlLAo+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPj4gVGhlICdzdHJ1Y3Qga2ltYWdl
JyBpcyBkZWZpbmVkIGluIHRoZSBoZWFkZXIgZmlsZSBpbmNsdWRlL2xpbnV4L2tleGVjLmgsCj4+
IGJlZm9yZSB1c2luZyBpdCwgbmVlZCB0byBpbmNsdWRlIGl0cyBoZWFkZXIgZmlsZSBvciBtYWtl
IGEgZGVjbGFyYXRpb24uCj4+IE90aGVyd2lzZSB0aGUgYWJvdmUgd2FybmluZ3MgbWF5IGJlIHRy
aWdnZXJlZC4KPj4KPj4gQWRkIGEgZGVjbGFyYXRpb24gb2Ygc3RydWN0IGtpbWFnZSB0byB0aGUg
ZmlsZSBhcmNoL3g4Ni9pbmNsdWRlL2FzbS8KPj4gY3Jhc2guaCwgdGhhdCB3aWxsIHNvbHZlIHRo
ZXNlIGNvbXBpbGUgd2FybmluZ3MuCj4+Cj4+IEZpeGVzOiBkZDVmNzI2MDc2Y2MgKCJrZXhlYzog
c3VwcG9ydCBmb3Iga2V4ZWMgb24gcGFuaWMgdXNpbmcgbmV3IHN5c3RlbSBjYWxsIikKPiAKPiBU
aGlzIGlzLCBvZiBjb3Vyc2UsIHdyb25nLiBZb3VyICpmaXJzdCogcGF0Y2ggaXMgaW50cm9kdWNp
bmcgdGhvc2UKPiB3YXJuaW5ncyBhbmQgSSdtIHdvbmRlcmluZyBob3cgZGlkIHlvdSBub3Qgc2Vl
IHRoZW0gZHVyaW5nIGJ1aWxkaW5nPwo+IAoKSSByZWFsbHkgc2F3IG15IGJ1aWxkaW5nIHJlc3Vs
dCwgYnV0IGtidWlsZCByZXBvcnRlZCB0aGUgZm9sbG93aW5nIG1lc3NhZ2VzOgoKdmltICs1IGFy
Y2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmgKCmRkNWY3MjYwNzZjYzc2IFZpdmVrIEdveWFsIDIw
MTQtMDgtMDggICA0ICAKZGQ1ZjcyNjA3NmNjNzYgVml2ZWsgR295YWwgMjAxNC0wOC0wOCAgQDUg
IGludCBjcmFzaF9sb2FkX3NlZ21lbnRzKHN0cnVjdCBraW1hZ2UgKmltYWdlKTsKZGQ1ZjcyNjA3
NmNjNzYgVml2ZWsgR295YWwgMjAxNC0wOC0wOCAgIDYgIGludCBjcmFzaF9jb3B5X2JhY2t1cF9y
ZWdpb24oc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwpkZDVmNzI2MDc2Y2M3NiBWaXZlayBHb3lhbCAy
MDE0LTA4LTA4ICAgNyAgaW50IGNyYXNoX3NldHVwX21lbW1hcF9lbnRyaWVzKHN0cnVjdCBraW1h
Z2UgKmltYWdlLApkZDVmNzI2MDc2Y2M3NiBWaXZlayBHb3lhbCAyMDE0LTA4LTA4ICAgOCAgCQlz
dHJ1Y3QgYm9vdF9wYXJhbXMgKnBhcmFtcyk7Cjg5ZjU3OWNlOTlmN2UwIFlpIFdhbmcgICAgIDIw
MTgtMTEtMjIgICA5ICB2b2lkIGNyYXNoX3NtcF9zZW5kX3N0b3Aodm9pZCk7CmRkNWY3MjYwNzZj
Yzc2IFZpdmVrIEdveWFsIDIwMTQtMDgtMDggIDEwICAKCjo6Ojo6OiBUaGUgY29kZSBhdCBsaW5l
IDUgd2FzIGZpcnN0IGludHJvZHVjZWQgYnkgY29tbWl0IAogICAgICAgXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXgo6Ojo6OjogZGQ1ZjcyNjA3NmNjNzYz
OWQ5NzEzYjMzNGM4YzEzM2Y3N2M2NzU3YSBrZXhlYzogc3VwcG9ydCBmb3Iga2V4ZWMgb24gcGFu
aWMgdXNpbmcgbmV3IHN5c3RlbSBjYWxsCiAgICAgICBeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl4KCldvdWxkIHlvdSBtaW5kIGdpdmluZyBtZSBhbnkgc3VnZ2VzdGlvbnMg
YWJvdXQgdGhpcz8KCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFyY2gveDg2L3JlYWxtb2RlL2lu
aXQuYzoxMToKPiAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmg6NTozMjogd2FybmluZzog
4oCYc3RydWN0IGtpbWFnZeKAmSBkZWNsYXJlZCBpbnNpZGUgcGFyYW1ldGVyIGxpc3Qgd2lsbCBu
b3QgYmUgdmlzaWJsZSBvdXRzaWRlIG9mIHRoaXMgZGVmaW5pdGlvbiBvciBkZWNsYXJhdGlvbgo+
ICAgICA1IHwgaW50IGNyYXNoX2xvYWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwo+
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fgo+IC4vYXJjaC94
ODYvaW5jbHVkZS9hc20vY3Jhc2guaDo2OjM3OiB3YXJuaW5nOiDigJhzdHJ1Y3Qga2ltYWdl4oCZ
IGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxlIG91dHNp
ZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uCj4gICAgIDYgfCBpbnQgY3Jhc2hf
Y29weV9iYWNrdXBfcmVnaW9uKHN0cnVjdCBraW1hZ2UgKmltYWdlKTsKPiAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fgo+IC4vYXJjaC94ODYvaW5jbHVk
ZS9hc20vY3Jhc2guaDo3OjM5OiB3YXJuaW5nOiDigJhzdHJ1Y3Qga2ltYWdl4oCZIGRlY2xhcmVk
IGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhp
cyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uCj4gICAgIDcgfCBpbnQgY3Jhc2hfc2V0dXBfbWVt
bWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCj4gICAgICAgfAo+IAo+IAo+IEFuZCB0
aGF0IGhhcHBlbnMgYmVjYXVzZSB5b3UndmUgaW5jbHVkZWQgYXNtL2NyYXNoLmggaW4KPiBhcmNo
L3g4Ni9yZWFsbW9kZS9pbml0LmMgYW5kIGl0IG9mIGNvdXJzZSBjb21wbGFpbnMgYmVjYXVzZSBp
dCBoYXNuJ3QKPiBzZWVuIHRoYXQgc3RydWN0IHlldC4KPiAKCkV4YWN0bHkuIExhc3QgdGltZSwg
aSBmaXhlZCB0aGUgd2FybmluZ3MgaW4gbXkgZmlyc3QgcGF0Y2gsIHBsZWFzZSByZWZlciB0byB0
aGUgcGF0Y2ggdjgocmVzZW5kKS4KCkxpbms6IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAx
OTEwMzEwMzM1MTcuMTEyODItMi1saWppYW5nQHJlZGhhdC5jb20KICAgICAgLVtQQVRDSCAxLzIg
UkVTRU5EIHY4XSB4ODYva2R1bXA6IGFsd2F5cyByZXNlcnZlIHRoZSBsb3cgMU0gd2hlbiB0aGUg
Y3Jhc2hrZXJuZWwgb3B0aW9uIGlzIHNwZWNpZmllZAoKCkFuZCBrYnVpbGQgc2FpZCB0aGF0IG5l
ZWQgdG8gYWRkIHRoZSByZXBvcnRlZC1ieSwgcGxlYXNlIHJlZmVyIHRvIHRoZSBmb2xsb3dpbmcg
TGluay4KCkxpbms6IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTEwMzEwMjMzLkVKUnRU
TVdQJTI1bGtwQGludGVsLmNvbQoKPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBm
b2xsb3dpbmcgdGFnCj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPgoKQW55IGlkZWEgYWJvdXQgdGhpcz8gQW55IHN1Z2dlc3Rpb25zIHdpbGwgYmUgYXBwcmVj
aWF0ZWQuCgpUaGFua3MuCkxpYW5ibwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
