Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A641D15410F
	for <lists+kexec@lfdr.de>; Thu,  6 Feb 2020 10:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm2QSgneRYglZXnWvNl1tajuf/kv6qt3qTvoyBbNk0o=; b=DSBSSx1P+POhn9
	bxgSyoVN0s80FVwrJnEeE1wBjEXhDVriV/OBXKLJFoht6srWIQ9bOZ9Elzop7L8Zu3rdq2WSJ3EOl
	fmv8lVGOnjG1dKTXBYuepNgV7+EmNWbSDInuhTnz7P1c1HGUEg0U2W+IHX7Fwhsd/00bl47L0Dglm
	mL7Gi1Zjte+85c1XSGnjB/ebt5APZ74zxTYzjWE0GMcP4WO5iFj18fDsexgl6UW1pRMOMA6VCidmy
	/RN+Zqflod/zhIHbRrfsMwjGRRlWUSH84Td23Y/GJUyQZZu1iW0dbxY+50Riq96vjMCVoRcB671Dh
	HQPXTnRKvND/QYb5ZsbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdMI-0008Jn-48; Thu, 06 Feb 2020 09:22:02 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdME-00088q-Dy
 for kexec@lists.infradead.org; Thu, 06 Feb 2020 09:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580980916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7vg6/blGqHqErRgjd39RecgnPSBgnnS+bDu7HevfsIE=;
 b=TYr+t1ZKJMxYAxYBtZZXkkMzGmsTvPHl1vQQjqAcdSSCDL9rbXaUuSsvTsAUDDhAR0SLar
 Ai/m+JE05Nca7yR++RC0OQ1i83ykzU+s0D5mBDSpVpS3Xm9jCiYnlJWxaRJFsOybP7uLrp
 kd+IPwY7qEtWcB+k4BjqyAZzDaRu0bY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-WlCw4__jMIC6UmAdIE-P4w-1; Thu, 06 Feb 2020 04:21:47 -0500
X-MC-Unique: WlCw4__jMIC6UmAdIE-P4w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 768B68010FD;
 Thu,  6 Feb 2020 09:21:45 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-108.pek2.redhat.com
 [10.72.12.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 724571E2B5;
 Thu,  6 Feb 2020 09:21:38 +0000 (UTC)
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
To: John Ogness <john.ogness@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
From: lijiang <lijiang@redhat.com>
Message-ID: <0f49d4cc-be61-ed0c-5001-2256416fe2ec@redhat.com>
Date: Thu, 6 Feb 2020 17:21:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200128161948.8524-1-john.ogness@linutronix.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_012158_550090_FDB3DA02 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMjDlubQwMeaciDI55pelIDAwOjE5LCBKb2huIE9nbmVzcyDlhpnpgZM6Cj4gSGVsbG8s
Cj4gCj4gQWZ0ZXIgc2V2ZXJhbCBSRkMgc2VyaWVzIFswXVsxXVsyXVszXVs0XSwgaGVyZSBpcyB0
aGUgZmlyc3Qgc2V0IG9mCj4gcGF0Y2hlcyB0byByZXdvcmsgdGhlIHByaW50ayBzdWJzeXN0ZW0u
IFRoaXMgZmlyc3Qgc2V0IG9mIHBhdGNoZXMKPiBvbmx5IHJlcGxhY2UgdGhlIGV4aXN0aW5nIHJp
bmdidWZmZXIgaW1wbGVtZW50YXRpb24uIE5vIGxvY2tpbmcgaXMKPiByZW1vdmVkLiBObyBzZW1h
bnRpY3MvYmVoYXZpb3Igb2YgcHJpbnRrIGFyZSBjaGFuZ2VkLgo+IAo+IFRoZSBWTUNPUkVJTkZP
IGlzIHVwZGF0ZWQsIHdoaWNoIHdpbGwgcmVxdWlyZSBjaGFuZ2VzIHRvIHRoZQo+IGV4dGVybmFs
IGNyYXNoIFs1XSB0b29sLiBJIHdpbGwgYmUgcHJlcGFyaW5nIGEgcGF0Y2ggdG8gYWRkIHN1cHBv
cnQKPiBmb3IgdGhlIG5ldyBWTUNPUkVJTkZPLgo+IApJbiBhZGRpdGlvbiB0byBjaGFuZ2luZyB0
aGUgY3Jhc2ggdXRpbGl0eSwgSSB3b3VsZCB0aGluayB0aGF0IHRoZQprZXhlYy10b29scyhzdWNo
IGFzIHRoZSB2bWNvcmUtZG1lc2cgYW5kIG1ha2VkdW1wZmlsZSkgYWxzbyBuZWVkIHRvCmJlIG1v
ZGlmaWVkIGFjY29yZGluZ2x5LgoKVGhhbmtzCkxpYW5ibwoKPiBUaGlzIHNlcmllcyBpcyBpbiBs
aW5lIHdpdGggdGhlIGFncmVlbWVudHMgWzZdIG1hZGUgYXQgdGhlIG1lZXRpbmcKPiBkdXJpbmcg
TFBDMjAxOSBpbiBMaXNib24sIHdpdGggMSBleGNlcHRpb246IHN1cHBvcnQgZm9yIGRpY3Rpb25h
cmllcwo+IHdpbGwgX25vdF8gYmUgZGlzY29udGludWVkIFs3XS4gRGljdGlvbmFyaWVzIGFyZSBz
dG9yZWQgaW4gYSBzZXBhcmF0ZQo+IGJ1ZmZlciBzbyB0aGF0IHRoZXkgY2Fubm90IGludGVyZmVy
ZSB3aXRoIHRoZSBodW1hbi1yZWFkYWJsZSBidWZmZXIuCj4gCj4gSm9obiBPZ25lc3MKPiAKPiBb
MF0gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MDIxMjE0MzAwMy40ODQ0Ni0xLWpvaG4u
b2duZXNzQGxpbnV0cm9uaXguZGUKPiBbMV0gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5
MDYwNzE2MjM0OS4xODE5OS0xLWpvaG4ub2duZXNzQGxpbnV0cm9uaXguZGUKPiBbMl0gaHR0cHM6
Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MDcyNzAxMzMzMy4xMTI2MC0xLWpvaG4ub2duZXNzQGxp
bnV0cm9uaXguZGUKPiBbM10gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MDgwNzIyMjYz
NC4xNzIzLTEtam9obi5vZ25lc3NAbGludXRyb25peC5kZQo+IFs0XSBodHRwczovL2xrbWwua2Vy
bmVsLm9yZy9yLzIwMTkxMTI4MDE1MjM1LjEyOTQwLTEtam9obi5vZ25lc3NAbGludXRyb25peC5k
ZQo+IFs1XSBodHRwczovL2dpdGh1Yi5jb20vY3Jhc2gtdXRpbGl0eS9jcmFzaAo+IFs2XSBodHRw
czovL2xrbWwua2VybmVsLm9yZy9yLzg3azFhY3o1cnguZnNmQGxpbnV0cm9uaXguZGUKPiBbN10g
aHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MTAwNzEyMDEzNC5jaXl3cjN3YWxlNGd4YTZ2
QHBhdGh3YXkuc3VzZS5jego+IAo+IEpvaG4gT2duZXNzICgyKToKPiAgIHByaW50azogYWRkIGxv
Y2tsZXNzIGJ1ZmZlcgo+ICAgcHJpbnRrOiB1c2UgdGhlIGxvY2tsZXNzIHJpbmdidWZmZXIKPiAK
PiAgaW5jbHVkZS9saW51eC9rbXNnX2R1bXAuaCAgICAgICAgIHwgICAgMiAtCj4gIGtlcm5lbC9w
cmludGsvTWFrZWZpbGUgICAgICAgICAgICB8ICAgIDEgKwo+ICBrZXJuZWwvcHJpbnRrL3ByaW50
ay5jICAgICAgICAgICAgfCAgODM2ICsrKysrKysrKy0tLS0tLS0tLQo+ICBrZXJuZWwvcHJpbnRr
L3ByaW50a19yaW5nYnVmZmVyLmMgfCAxMzcwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gIGtlcm5lbC9wcmludGsvcHJpbnRrX3JpbmdidWZmZXIuaCB8ICAzMjggKysrKysrKwo+ICA1
IGZpbGVzIGNoYW5nZWQsIDIxMTQgaW5zZXJ0aW9ucygrKSwgNDIzIGRlbGV0aW9ucygtKQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL3ByaW50ay9wcmludGtfcmluZ2J1ZmZlci5jCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBrZXJuZWwvcHJpbnRrL3ByaW50a19yaW5nYnVmZmVyLmgKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWls
aW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
