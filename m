Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209011B75F4
	for <lists+kexec@lfdr.de>; Fri, 24 Apr 2020 14:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXNBaggMrWeQslADiAzerzpMMbySeFoH2tVWx4bdl44=; b=MAWYIum8RTh8Km
	DJ6vibt7MaIhhq2SA7O50JvHqpu/coE6P1ALGUgnAdmKItbMopebBMowXAGZ6fIIYoH9O7LJ2puhh
	v7xsxX5+JvFjxp4iSjHgN0Sm20HJLpGYl65yL6wZurZ1fKi+Mlh0sqj0NHlGHOiCtlNg2HuWh1UmQ
	VoFRth/aDLrvznPwbpvhWmmiow2PM6yY74iaES6lmGmGWfvEKG3Dc+GmDU/GpAoSMEbWoAdKhqXni
	y6zX5zNGmoFi7tMQe1WagGX97WgKGNtIzs6b5FbWc0x8CHnQ1Bawy84hEVS2ROTc1s+Nn/4/LFo02
	gadYbSzVbedvDwQjcxDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxqC-0005QD-BF; Fri, 24 Apr 2020 12:54:00 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxq9-0005OU-AH
 for kexec@lists.infradead.org; Fri, 24 Apr 2020 12:53:58 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jRxq3-0003Tj-AW; Fri, 24 Apr 2020 14:53:51 +0200
From: John Ogness <john.ogness@linutronix.de>
To: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
Subject: Re: [Crash-utility] new printk ringbuffer interface
References: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <421536467.24687472.1587652980905.JavaMail.zimbra@redhat.com>
 <OSBPR01MB1991CB3EC9C98B2387C61A1EDDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <OSBPR01MB1991F08228D7E9BDBEF07105DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
Date: Fri, 24 Apr 2020 14:53:49 +0200
In-Reply-To: <OSBPR01MB1991F08228D7E9BDBEF07105DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 ("HAGIO \=\?utf-8\?B\?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKSIncw\=\=\?\= message
 of "Thu, 23 Apr 2020 19:21:14 +0000")
Message-ID: <875zdp59k2.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_055357_495334_1402A690 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Dave Anderson <anderson@redhat.com>, "Discussion list for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0yMywgSEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKSA8ay1oYWdpby1h
YkBuZWMuY29tPiB3cm90ZToKPj4gU2hvdWxkIGFsbCBzdHJ1Y3Qgc2l6ZXMgYW5kIGZpZWxkIG9m
ZnNldHMgYmUgZXhwb3J0ZWQ/IEl0Cj4+IHdvdWxkIGxvb2sgc29tZXRoaW5nIGxpa2UgdGhpczoK
Pj4KPj4gICAgICAgICBWTUNPUkVJTkZPX1NZTUJPTChwcmIpOwo+Pgo+PiAgICAgICAgIFZNQ09S
RUlORk9fU1RSVUNUX1NJWkUocHJpbnRrX3JpbmdidWZmZXIpOwo+PiAgICAgICAgIFZNQ09SRUlO
Rk9fT0ZGU0VUKHByaW50a19yaW5nYnVmZmVyLCBkZXNjX3JpbmcpOwo+PiAgICAgICAgIFZNQ09S
RUlORk9fT0ZGU0VUKHByaW50a19yaW5nYnVmZmVyLCB0ZXh0X2RhdGFfcmluZyk7Cj4+ICAgICAg
ICAgVk1DT1JFSU5GT19PRkZTRVQocHJpbnRrX3JpbmdidWZmZXIsIGRpY3RfZGF0YV9yaW5nKTsK
Pj4gICAgICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmludGtfcmluZ2J1ZmZlciwgZmFpbCk7Cj4+
Cj4+ICAgICAgICAgVk1DT1JFSU5GT19TVFJVQ1RfU0laRShwcmJfZGVzY19yaW5nKTsKPj4gICAg
ICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmJfZGVzY19yaW5nLCBjb3VudF9iaXRzKTsKPj4gICAg
ICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmJfZGVzY19yaW5nLCBkZXNjcyk7Cj4+ICAgICAgICAg
Vk1DT1JFSU5GT19PRkZTRVQocHJiX2Rlc2NfcmluZywgaGVhZF9pZCk7Cj4+ICAgICAgICAgVk1D
T1JFSU5GT19PRkZTRVQocHJiX2Rlc2NfcmluZywgdGFpbF9pZCk7Cj4+Cj4+ICAgICAgICAgVk1D
T1JFSU5GT19TVFJVQ1RfU0laRShwcmJfZGVzYyk7Cj4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZT
RVQocHJiX2Rlc2MsIGluZm8pOwo+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByYl9kZXNj
LCBzdGF0ZV92YXIpOwo+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByYl9kZXNjLCB0ZXh0
X2Jsa19scG9zKTsKPj4gICAgICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmJfZGVzYywgZGljdF9i
bGtfbHBvcyk7Cj4+Cj4+ICAgICAgICAgVk1DT1JFSU5GT19TVFJVQ1RfU0laRShwcmJfZGF0YV9i
bGtfbHBvcyk7Cj4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJiX2RhdGFfYmxrX2xwb3Ms
IGJlZ2luKTsKPj4gICAgICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmJfZGF0YV9ibGtfbHBvcywg
bmV4dCk7Cj4+Cj4+ICAgICAgICAgVk1DT1JFSU5GT19TVFJVQ1RfU0laRShwcmludGtfaW5mbyk7
Cj4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJpbnRrX2luZm8sIHNlcSk7Cj4+ICAgICAg
ICAgVk1DT1JFSU5GT19PRkZTRVQocHJpbnRrX2luZm8sIHRzX25zZWMpOwo+PiAgICAgICAgIFZN
Q09SRUlORk9fT0ZGU0VUKHByaW50a19pbmZvLCB0ZXh0X2xlbik7Cj4+ICAgICAgICAgVk1DT1JF
SU5GT19PRkZTRVQocHJpbnRrX2luZm8sIGRpY3RfbGVuKTsKPj4gICAgICAgICBWTUNPUkVJTkZP
X09GRlNFVChwcmludGtfaW5mbywgY2FsbGVyX2lkKTsKPj4KPj4gICAgICAgICBWTUNPUkVJTkZP
X1NUUlVDVF9TSVpFKHByYl9kYXRhX3JpbmcpOwo+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZGU0VU
KHByYl9kYXRhX3JpbmcsIHNpemVfYml0cyk7Cj4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQo
cHJiX2RhdGFfcmluZywgZGF0YSk7Cj4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJiX2Rh
dGFfcmluZywgaGVhZF9pZCk7Cj4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJiX2RhdGFf
cmluZywgdGFpbF9pZCk7Cj4KPiBJZiB0aGVyZSBpcyBubyBlZmZpY2llbnQgd2F5LCB3ZSB3aWxs
IG5lZWQgYWxsIG9mIHRoZSBlbnRyaWVzIGluCj4gVk1DT1JFSU5GTy4KCkl0IHNlZW1zIGxpa2Ug
YSBsb3QgdG8gZXhwb3J0IGV2ZXJ5dGhpbmcsIGJ1dCBJIGRvbid0IGhhdmUgYSBwcm9ibGVtCndp
dGggaXQuIElmIHdlIGRlY2lkZSB0byBleHBvcnQgZXZlcnl0aGluZyAod2hpY2ggSSBleHBlY3Qg
d2Ugd2lsbCBuZWVkCnRvIGRvKSwgdGhlbiBJIHdvdWxkIGNoYW5nZSBteSBjcmFzaCg4KSBpbXBs
ZW1lbnRhdGlvbiB0byBhbHNvIHJlbHkgb25seQpvbiB0aGUgVk1DT1JFSU5GTy4gSSBzZWUgbm8g
cG9pbnQgaW4gaGF2aW5nIHNvbWUgaW1wbGVtZW50YXRpb25zIHVzaW5nCmRlYnVnIGRhdGEgYW5k
IG90aGVyIGltcGxlbWVudGF0aW9ucyB1c2luZyBWTUNPUkVJTkZPIGRhdGEsIGlmClZNQ09SRUlO
Rk8gaGFzIGV2ZXJ5dGhpbmcgdGhhdCBpcyBuZWVkZWQuCgpKb2huIE9nbmVzcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
