Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25486153F46
	for <lists+kexec@lfdr.de>; Thu,  6 Feb 2020 08:31:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNWhHaQG8g63xmi6exj/fHWyf0yUTsaiX08+pKJTils=; b=TENQeXXu2B0Pl/
	uIZEreho1QHGep1ppgbVGAVOdyPK4cFUxYqSu5OODvpSA3NFv2cD4D1o4wU+GpU4It4I2Ao5ja87o
	uWhj0lEgNqVnJJZKQDrOXNxRbvIRYRrnhLXuJuq3u2WhWe3+oAvO7tmIWJy47CnXzpo9gcudR9uzC
	ppbAqpXjqiTR+HYXLDnpE+vZqn/edJY5CPS7Qn4YPF0bnEUc0PGzW/M0IhoYC57vWIoCLtHmtHY2c
	Ys3PY5bHpnSGinNAozYptQ/83Pmu7get3Vo+NSz9ma9nGb3L/m8iGcLQjN5beLv66grWWes2NMIuX
	OoSJ/Yj7/W52y+1VYeUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izbct-0007H6-L0; Thu, 06 Feb 2020 07:31:03 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izbcp-0007FA-Hq
 for kexec@lists.infradead.org; Thu, 06 Feb 2020 07:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580974255;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RDgB6g2ZvA/Ut5iIJr1OGLu1IXUQU97q2dZMGoQowgc=;
 b=c04OFbR3qzeFv9kQ7lyNM73Hp2l/v6rMb3WAiLkptssPnXm0oEkrVYfOYbeoDHAJbKcemC
 VqMcTo1uPhQgmn/22fBMyahD5N4kK6LLhyVa+Fz969VOYqsuda9O03GfQqwbu5hCBJL0gK
 ZmyjoHohSjvBZYanMgzWWgTgMWjW7RE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-Go4GNvNyO-GK14Jg8jQ9uw-1; Thu, 06 Feb 2020 02:30:51 -0500
X-MC-Unique: Go4GNvNyO-GK14Jg8jQ9uw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3388FDB2E;
 Thu,  6 Feb 2020 07:30:49 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-108.pek2.redhat.com
 [10.72.12.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 526AB5C1B2;
 Thu,  6 Feb 2020 07:30:42 +0000 (UTC)
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
To: John Ogness <john.ogness@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com> <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
From: lijiang <lijiang@redhat.com>
Message-ID: <06915ce1-f3ec-bb39-c00e-d0bcd63189eb@redhat.com>
Date: Thu, 6 Feb 2020 15:30:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87wo919grz.fsf@linutronix.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_233059_670222_775D91F9 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

5ZyoIDIwMjDlubQwMuaciDA15pelIDIzOjQ4LCBKb2huIE9nbmVzcyDlhpnpgZM6Cj4gT24gMjAy
MC0wMi0wNSwgU2VyZ2V5IFNlbm96aGF0c2t5IDxzZXJnZXkuc2Vub3poYXRza3lAZ21haWwuY29t
PiB3cm90ZToKPj4gM0JVRzogS0FTQU46IHdpbGQtbWVtb3J5LWFjY2VzcyBpbiBjb3B5X2RhdGEr
MHgxMjkvMHgyMjA+Cj4+IDNXcml0ZSBvZiBzaXplIDQgYXQgYWRkciA1YTVhNWE1YTVhNWE1YTVh
IGJ5IHRhc2sgY2F0LzQ3ND4KPiAKPiBUaGUgcHJvYmxlbSB3YXMgZHVlIHRvIGFuIHVuaW5pdGlh
bGl6ZWQgcG9pbnRlci4KPiAKPiBWZXJ5IHJlY2VudGx5IHRoZSByaW5nYnVmZmVyIEFQSSB3YXMg
ZXhwYW5kZWQgc28gdGhhdCBpdCBjb3VsZAo+IG9wdGlvbmFsbHkgY291bnQgbGluZXMgaW4gYSBy
ZWNvcmQuIFRoaXMgbWFkZSBpdCBwb3NzaWJsZSBmb3IgbWUgdG8KPiBpbXBsZW1lbnQgcmVjb3Jk
X3ByaW50X3RleHRfaW5saW5lKCksIHdoaWNoIGNhbiBkbyBhbGwgdGhlIGttc2dfZHVtcAo+IG11
bHRpLWxpbmUgbWFkbmVzcyB3aXRob3V0IHJlcXVpcmluZyBhIHRlbXBvcmFyeSBidWZmZXIuIFJh
dGhlciB0aGFuCj4gcGFzc2luZyBhbiBleHRyYSBhcmd1bWVudCBhcm91bmQgZm9yIHRoZSBvcHRp
b25hbCBsaW5lIGNvdW50LCBJIGFkZGVkCj4gdGhlIHRleHRfbGluZV9jb3VudCBwb2ludGVyIHRv
IHRoZSBwcmludGtfcmVjb3JkIHN0cnVjdC4gQW5kIHNpbmNlIGxpbmUKPiBjb3VudGluZyBpcyBy
YXJlbHkgbmVlZGVkLCBpdCBpcyBvbmx5IHBlcmZvcm1lZCBpZiB0ZXh0X2xpbmVfY291bnQgaXMK
PiBub24tTlVMTC4KPiAKPiBJIG92ZXJzYXcgdGhhdCBkZXZrbXNnX29wZW4oKSBzZXR1cCBhIHBy
aW50a19yZWNvcmQgYW5kIHNvIEkgZGlkIG5vdCBzZWUKPiB0byBhZGQgdGhlIGV4dHJhIE5VTEwg
aW5pdGlhbGl6YXRpb24gb2YgdGV4dF9saW5lX2NvdW50LiBUaGVyZSBzaG91bGQgYmUKPiBiZSBh
biBpbml0aWFsaXplciBmdW5jdGlvbi9tYWNybyB0byBhdm9pZCB0aGlzIGRhbmdlci4KPiAKR29v
ZCBmaW5kaW5ncy4gVGhhbmtzIGZvciB0aGUgcXVpY2sgZml4dXAsIGl0IHdvcmtzIHdlbGwuCgpM
aWFuYm8KCj4gSm9obiBPZ25lc3MKPiAKPiBUaGUgcXVpY2sgZml4dXA6Cj4gCj4gZGlmZiAtLWdp
dCBhL2tlcm5lbC9wcmludGsvcHJpbnRrLmMgYi9rZXJuZWwvcHJpbnRrL3ByaW50ay5jCj4gaW5k
ZXggZDBkMjRlZTFkMWY0Li41YWQ2N2ZmNjBjZDkgMTAwNjQ0Cj4gLS0tIGEva2VybmVsL3ByaW50
ay9wcmludGsuYwo+ICsrKyBiL2tlcm5lbC9wcmludGsvcHJpbnRrLmMKPiBAQCAtODgzLDYgKzg4
Myw3IEBAIHN0YXRpYyBpbnQgZGV2a21zZ19vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVj
dCBmaWxlICpmaWxlKQo+ICAJdXNlci0+cmVjb3JkLnRleHRfYnVmX3NpemUgPSBzaXplb2YodXNl
ci0+dGV4dF9idWYpOwo+ICAJdXNlci0+cmVjb3JkLmRpY3RfYnVmID0gJnVzZXItPmRpY3RfYnVm
WzBdOwo+ICAJdXNlci0+cmVjb3JkLmRpY3RfYnVmX3NpemUgPSBzaXplb2YodXNlci0+ZGljdF9i
dWYpOwo+ICsJdXNlci0+cmVjb3JkLnRleHRfbGluZV9jb3VudCA9IE5VTEw7Cj4gIAo+ICAJbG9n
YnVmX2xvY2tfaXJxKCk7Cj4gIAl1c2VyLT5zZXEgPSBwcmJfZmlyc3Rfc2VxKHByYik7Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFp
bGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
