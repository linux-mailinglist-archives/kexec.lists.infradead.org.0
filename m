Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FD2EACAD
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 10:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5qzduLPloaTLJ4rRdJjXO49I2+yGinUVDWw+7mqNAc=; b=Bnyfag40pR5D1k
	W/Z95cUICwrfHp77VTp9DTX2OgIrAqtphXZx19q/nrLTdmhOO63ZMx97QvFBGtZ7HTJyF1+XgyzQp
	+6ZExJzBBHfBSus9TyAGYIzfqwfSn139ax4f+xMsgczfrz64OLyGfNlDjjTRLhJ7yntrWj1aiufu+
	lN7CPgGvFLIlA7wQ43FHhCeHx7G+ES+Ow21RvAuxZ2n52jUml7sVQXLbM5GmxDRvWiU+arJehIxyC
	rOoG+HMJVFoX8/m4jHwzINUvNovhUK35lUaOuN6cv0pHa8HXJZardKk2/prw4tfimGBYmMTvUZx9A
	B7Jpbg5XCsSDC1oPH9yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6xA-0000yW-SC; Thu, 31 Oct 2019 09:41:16 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6x4-0000xk-6D
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 09:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572514868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FphYlGHf0GOBbNL99gSzHiqeOzgs9Hepno3U9ekZfgk=;
 b=Gi3/jghu9DPjWx7MxR3zjHVWIw2/pcLIqivMmVAhxwreqKZwiZnbxTNpHe3kic4Pn84VZ+
 b6dIKgK/1bGFZsmNmWvK6f+ma4DF/VPwoYfoz3PR2G38Y8eTd3VzVB7PDMnVwdLFSNdBj0
 OP9wZ8tT4Kv2fn5oUxUqwYX6ercDqfc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-FFvMLDcLMMOOAmBqX6VMqQ-1; Thu, 31 Oct 2019 05:41:01 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 91647800D49;
 Thu, 31 Oct 2019 09:40:59 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 339045D6A3;
 Thu, 31 Oct 2019 09:40:39 +0000 (UTC)
Subject: Re: [PATCH 1/2 RESEND v8] x86/kdump: always reserve the low 1M when
 the crashkernel option is specified
To: Borislav Petkov <bp@alien8.de>
References: <20191031033517.11282-1-lijiang@redhat.com>
 <20191031033517.11282-2-lijiang@redhat.com>
 <20191031071345.GA17248@nazgul.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <fe68b796-c483-20c4-623c-2671c52a3bf9@redhat.com>
Date: Thu, 31 Oct 2019 17:40:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191031071345.GA17248@nazgul.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: FFvMLDcLMMOOAmBqX6VMqQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_024110_302703_3D2F8730 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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

5ZyoIDIwMTnlubQxMOaciDMx5pelIDE1OjEzLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IFBs
ZWFzZSBkbyBub3QgbWVyZ2UgYSAwZGF5IGJvdCBmaXggd2l0aCBhbm90aGVyIHBhdGNoIG9mIHlv
dXJzIHdoaWNoCj4gZG9lcyBub3QgY2F1c2UgaXQgaW4gdGhlIGZpcnN0IHBsYWNlLiBXaGVuIHlv
dSBsb29rIGF0IHRoaXMgcGF0Y2ggYWxvbmUsCj4gd2hhdCBkbyB5b3UgdGhpbmsgdGhlIFJlcG9y
dGVkLWJ5IHRhZyBtZWFucywgaWYgYW55dGhpbmcgYXQgYWxsPwo+IApUaGFua3MgZm9yIHlvdXIg
c3VnZ2VzdGlvbnMuCgpNYXliZSBpdCBzaG91bGQgYmUgYSBzZXBhcmF0ZSBwYXRjaCB0byBmaXgg
dGhlIG9sZCBjb21waWxlIHdhcm5pbmdzIGFzIGZvbGxvdy4KQW5kIGkgc2hvdWxkIHB1dCB0aGUg
cGF0Y2ggaW50byB0aGlzIHNlcmllcy4KCgpjb21taXQgZDIwOTFkMWY0ZjY3ZjFjMzgyOTNiMGU5
M2ZkYmZlZmE3NjY5NDBjZiAoSEVBRCAtPiBtYXN0ZXIpCkF1dGhvcjogTGlhbmJvIEppYW5nIDxs
aWppYW5nQHJlZGhhdC5jb20+CkRhdGU6ICAgVGh1IE9jdCAzMSAxNTo0ODowMiAyMDE5ICswODAw
CgogICAga2V4ZWM6IEZpeCBpMzg2IGJ1aWxkIHdhcm5pbmdzIHRoYXQgbWlzc2VkIGRlY2xhcmF0
aW9uIG9mIHN0cnVjdCBraW1hZ2UKICAgIAogICAgS2J1aWxkIHRlc3Qgcm9ib3QgcmVwb3J0ZWQg
c29tZSBidWlsZCB3YXJuaW5ncywgcGxlYXNlIHJlZmVyIHRvIHRoZQogICAgTGluayBiZWxvdyBm
b3IgZGV0YWlscy4KICAgIAogICAgQWRkIGEgZGVjbGFyYXRpb24gb2Ygc3RydWN0IGtpbWFnZSB0
byBmaXggdGhlc2UgY29tcGlsZSB3YXJuaW5ncy4KICAgIAogICAgRml4ZXM6IGRkNWY3MjYwNzZj
YyAoImtleGVjOiBzdXBwb3J0IGZvciBrZXhlYyBvbiBwYW5pYyB1c2luZyBuZXcgc3lzdGVtIGNh
bGwiKQogICAgUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgog
ICAgU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhhdC5jb20+CiAgICBM
aW5rOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS8xMC8zMC84MzMKCmRpZmYgLS1naXQgYS9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vY3Jhc2gu
aAppbmRleCAwYWNmNWVlNDVhMjEuLmVmNTYzOGY2NDFmMiAxMDA2NDQKLS0tIGEvYXJjaC94ODYv
aW5jbHVkZS9hc20vY3Jhc2guaAorKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oCkBA
IC0yLDYgKzIsOCBAQAogI2lmbmRlZiBfQVNNX1g4Nl9DUkFTSF9ICiAjZGVmaW5lIF9BU01fWDg2
X0NSQVNIX0gKIAorc3RydWN0IGtpbWFnZTsKKwogaW50IGNyYXNoX2xvYWRfc2VnbWVudHMoc3Ry
dWN0IGtpbWFnZSAqaW1hZ2UpOwogaW50IGNyYXNoX2NvcHlfYmFja3VwX3JlZ2lvbihzdHJ1Y3Qg
a2ltYWdlICppbWFnZSk7CiBpbnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtp
bWFnZSAqaW1hZ2UsCgo+IEFsc28sIGl0IGlzIG5vdCBhICJSRVNFTkQiIGlmIHlvdSBjaGFuZ2Ug
dGhlbS4gWW91IGNhbiBjYWxsIHRoZW0gdjguMSBvcgo+IHdoYXRldmVyIHRvIGRlbm90ZSB0aGF0
IHRoZSBjaGFuZ2UgaXMgc21hbGwuCj4gClRoYW5rcyBmb3IgeW91ciBleHBsYW5hdGlvbiBpbiBk
ZXRhaWwuCgo+IEFsc28sIGRvIG5vdCBzZW5kIHY5IG9yIHY4LjEgb3Igd2hhdGV2ZXIsIGltbWVk
aWF0ZWx5IGJ1dCB3YWl0IGZvciBvdGhlcgo+IHJldmlld3MuCgpPSy4gTGV0cyB3YWl0IGEgd2Vl
ayBvciBtb3JlLgoKPiBZb3UgaGF2ZSBzZW50IHRoZXNlIHBhdGNoZXMgNCghKSB0aW1lcyBpbiB0
aGlzIHdlZWsgYWxvbmUuIEhvdwo+IHdvdWxkIHlvdSBmZWVsIGlmIEkgaGFtbWVyIHlvdXIgaW5i
b3ggd2l0aCBwYXRjaGVzIG9uIGEgZGFpbHkgYmFzaXM/Cj5Qcm9iYWJseSBiZWNhdXNlIHRoZSBj
aGFuZ2UgaXMgc21hbGwuCgpBbnl3YXksIHNvIHNvcnJ5LCBpdCBzZWVtcyBpbmNvbnNpZGVyYXRl
LgoKPiBZb3UgY2FuIHJlYWQKPiAKPiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xh
dGVzdC9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sCj4gCj4gaW4gdGhlIG1lYW50aW1l
LCBlc3BlY2lhbGx5IHNlY3Rpb24KPiAKPiAiOSkgRG9uJ3QgZ2V0IGRpc2NvdXJhZ2VkIC0gb3Ig
aW1wYXRpZW50Igo+IAo+IHdoaWxlIHdhaXRpbmcuCgpPSy4gVGhhbmtzLgoKTGlhbmJvCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGlu
ZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
