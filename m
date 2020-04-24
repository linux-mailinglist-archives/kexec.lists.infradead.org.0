Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E221B76BF
	for <lists+kexec@lfdr.de>; Fri, 24 Apr 2020 15:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VvNWhNXE44BppZ6iv09TJb+/m1LXnk8cS/mRLx0mI0=; b=OVm5rglm0eydBX
	/jxyYEs9eSWuNXEPQurCPIYGD+1HEQV/HqUmxvp6uG6C32VBN69yJkFpPnIWybZKpqenPvUxo4ta+
	EKZ2vs8aEZqeV2VKVMQPcOrC1KMtcVk0tAeIu8RIqChpohS7KvQKCEgPmYg/dMoaAMsUAB8/H67bl
	AeNgGZmFzcyoj3vqLm6E6m8sP1pbtXD57ZtEDqQksaxSOC0STI7tip8cvAVPK0P08g0KWicgPbLbI
	S/jbBehghKLdiouPnSgg6k2j8d5FGaG/J+6Y+bgCrTY3QI4YNSTb+imQYpC2cjhag+aU/WusDXpFY
	sJRf+nnVzrEAPa/0P+YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyCw-0008Ic-PA; Fri, 24 Apr 2020 13:17:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyCv-0008Hx-Kf
 for kexec@bombadil.infradead.org; Fri, 24 Apr 2020 13:17:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=o+Bc0HEpyGALCJwsQY1BFoyocTV1BJWU3gVaFRPXmBw=; b=lN+dHQwJ0Qxqwv4n5ThRBfYuW4
 0dFhCbsHhuH2ONz6DBWRJXBwT+fuJkRpto2T5pJuHkJLJQxVjgwa4M6bOTLnjvJr3oCIZqKxAe0gH
 COYL9WNaSAhXbWgWtFez42VG2+y5/CQT6aZNpdTw0rIDCwGm2YEHC/WGjeL32WEmQeQEWakb0ulpm
 nlmqB+uZTcm0Se/vGw+QuZId5t+lYAF6qcEV0vivZIg9miP/UYA05hEH9eQH81CwXVmUTe0CTBGwG
 akG0W3WgANbo//J/zW2jZ2u9ZFPfEeXZRhgFmZJmQDanbR8qz+RUpjxEMCb4Msj4REDjFJlYUs260
 B8xzFK4Q==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyCt-0002VI-Ca
 for kexec@lists.infradead.org; Fri, 24 Apr 2020 13:17:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587734198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o+Bc0HEpyGALCJwsQY1BFoyocTV1BJWU3gVaFRPXmBw=;
 b=aHep8E1swTvTbIn46D7hysBrwXe7FE0UDvuDs5TyR+W3lu7rmcJtv460dJjJExgtDmudGP
 lEJ0psKShcpnwSOm6N89o4b4kLeRPoTb1LNjZujN4Yeck/qgiwzf4xzuTEqItlSmy4N3Z3
 UwtFVUMO1xJeWknOom+jTIZtQ1sK62c=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587734220;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o+Bc0HEpyGALCJwsQY1BFoyocTV1BJWU3gVaFRPXmBw=;
 b=geb+IJMKr3Jls30yv2btl68FBtIjNDwGaFJRCo+qDgryg67yRxUiQZozrlaHlIXnn1sWwO
 asXpAhOwf/JAHwc5O5iwCTjXLaIlAJl/biofXdmwcLx2z7EiWWGaMzlo3LNa2Rv4ZKlDX6
 VSj5ceNkCP999gm6WhpzedFU7472OhE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587734246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o+Bc0HEpyGALCJwsQY1BFoyocTV1BJWU3gVaFRPXmBw=;
 b=hQ7ZH9dV3nZQMu14gUNGLkWhm9xPzZyMK9n335loh0XZIkGjx8fX5RexixMyvYH4ih9ttH
 XRgGJQYO2Pemo4nHpxCIiJ9Lg0Nose/oUsW9QCdcChUQ2sKPxTfWniBuB2q7V+heDIvJvx
 ZiwvsHY6E9U9GNi+IFAeHjaPIs/tgTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-450-C4PTRXkGN46nb5e8J-G-hw-1; Fri, 24 Apr 2020 09:16:37 -0400
X-MC-Unique: C4PTRXkGN46nb5e8J-G-hw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B7631800D42;
 Fri, 24 Apr 2020 13:16:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1386C1917A;
 Fri, 24 Apr 2020 13:16:36 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E52EC4CAA0;
 Fri, 24 Apr 2020 13:16:35 +0000 (UTC)
Date: Fri, 24 Apr 2020 09:16:35 -0400 (EDT)
From: Dave Anderson <anderson@redhat.com>
To: John Ogness <john.ogness@linutronix.de>
Message-ID: <1451118330.24888154.1587734195843.JavaMail.zimbra@redhat.com>
In-Reply-To: <875zdp59k2.fsf@vostro.fn.ogness.net>
References: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <421536467.24687472.1587652980905.JavaMail.zimbra@redhat.com>
 <OSBPR01MB1991CB3EC9C98B2387C61A1EDDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <OSBPR01MB1991F08228D7E9BDBEF07105DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <875zdp59k2.fsf@vostro.fn.ogness.net>
Subject: Re: [Crash-utility] new printk ringbuffer interface
MIME-Version: 1.0
X-Originating-IP: [10.3.113.22, 10.4.195.6]
Thread-Topic: new printk ringbuffer interface
Thread-Index: QS+6feQAWoLHzXxRlHJLzdPKh9w9Fw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org,
 HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>, "Discussion list for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gT24gMjAyMC0wNC0yMywgSEFHSU8gS0Fa
VUhJVE8o6JCp5bC+44CA5LiA5LuBKSA8ay1oYWdpby1hYkBuZWMuY29tPiB3cm90ZToKPiA+PiBT
aG91bGQgYWxsIHN0cnVjdCBzaXplcyBhbmQgZmllbGQgb2Zmc2V0cyBiZSBleHBvcnRlZD8gSXQK
PiA+PiB3b3VsZCBsb29rIHNvbWV0aGluZyBsaWtlIHRoaXM6Cj4gPj4KPiA+PiAgICAgICAgIFZN
Q09SRUlORk9fU1lNQk9MKHByYik7Cj4gPj4KPiA+PiAgICAgICAgIFZNQ09SRUlORk9fU1RSVUNU
X1NJWkUocHJpbnRrX3JpbmdidWZmZXIpOwo+ID4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQo
cHJpbnRrX3JpbmdidWZmZXIsIGRlc2NfcmluZyk7Cj4gPj4gICAgICAgICBWTUNPUkVJTkZPX09G
RlNFVChwcmludGtfcmluZ2J1ZmZlciwgdGV4dF9kYXRhX3JpbmcpOwo+ID4+ICAgICAgICAgVk1D
T1JFSU5GT19PRkZTRVQocHJpbnRrX3JpbmdidWZmZXIsIGRpY3RfZGF0YV9yaW5nKTsKPiA+PiAg
ICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByaW50a19yaW5nYnVmZmVyLCBmYWlsKTsKPiA+Pgo+
ID4+ICAgICAgICAgVk1DT1JFSU5GT19TVFJVQ1RfU0laRShwcmJfZGVzY19yaW5nKTsKPiA+PiAg
ICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByYl9kZXNjX3JpbmcsIGNvdW50X2JpdHMpOwo+ID4+
ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJiX2Rlc2NfcmluZywgZGVzY3MpOwo+ID4+ICAg
ICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJiX2Rlc2NfcmluZywgaGVhZF9pZCk7Cj4gPj4gICAg
ICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmJfZGVzY19yaW5nLCB0YWlsX2lkKTsKPiA+Pgo+ID4+
ICAgICAgICAgVk1DT1JFSU5GT19TVFJVQ1RfU0laRShwcmJfZGVzYyk7Cj4gPj4gICAgICAgICBW
TUNPUkVJTkZPX09GRlNFVChwcmJfZGVzYywgaW5mbyk7Cj4gPj4gICAgICAgICBWTUNPUkVJTkZP
X09GRlNFVChwcmJfZGVzYywgc3RhdGVfdmFyKTsKPiA+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZG
U0VUKHByYl9kZXNjLCB0ZXh0X2Jsa19scG9zKTsKPiA+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZG
U0VUKHByYl9kZXNjLCBkaWN0X2Jsa19scG9zKTsKPiA+Pgo+ID4+ICAgICAgICAgVk1DT1JFSU5G
T19TVFJVQ1RfU0laRShwcmJfZGF0YV9ibGtfbHBvcyk7Cj4gPj4gICAgICAgICBWTUNPUkVJTkZP
X09GRlNFVChwcmJfZGF0YV9ibGtfbHBvcywgYmVnaW4pOwo+ID4+ICAgICAgICAgVk1DT1JFSU5G
T19PRkZTRVQocHJiX2RhdGFfYmxrX2xwb3MsIG5leHQpOwo+ID4+Cj4gPj4gICAgICAgICBWTUNP
UkVJTkZPX1NUUlVDVF9TSVpFKHByaW50a19pbmZvKTsKPiA+PiAgICAgICAgIFZNQ09SRUlORk9f
T0ZGU0VUKHByaW50a19pbmZvLCBzZXEpOwo+ID4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQo
cHJpbnRrX2luZm8sIHRzX25zZWMpOwo+ID4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJp
bnRrX2luZm8sIHRleHRfbGVuKTsKPiA+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByaW50
a19pbmZvLCBkaWN0X2xlbik7Cj4gPj4gICAgICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmludGtf
aW5mbywgY2FsbGVyX2lkKTsKPiA+Pgo+ID4+ICAgICAgICAgVk1DT1JFSU5GT19TVFJVQ1RfU0la
RShwcmJfZGF0YV9yaW5nKTsKPiA+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByYl9kYXRh
X3JpbmcsIHNpemVfYml0cyk7Cj4gPj4gICAgICAgICBWTUNPUkVJTkZPX09GRlNFVChwcmJfZGF0
YV9yaW5nLCBkYXRhKTsKPiA+PiAgICAgICAgIFZNQ09SRUlORk9fT0ZGU0VUKHByYl9kYXRhX3Jp
bmcsIGhlYWRfaWQpOwo+ID4+ICAgICAgICAgVk1DT1JFSU5GT19PRkZTRVQocHJiX2RhdGFfcmlu
ZywgdGFpbF9pZCk7Cj4gPgo+ID4gSWYgdGhlcmUgaXMgbm8gZWZmaWNpZW50IHdheSwgd2Ugd2ls
bCBuZWVkIGFsbCBvZiB0aGUgZW50cmllcyBpbgo+ID4gVk1DT1JFSU5GTy4KPiAKPiBJdCBzZWVt
cyBsaWtlIGEgbG90IHRvIGV4cG9ydCBldmVyeXRoaW5nLCBidXQgSSBkb24ndCBoYXZlIGEgcHJv
YmxlbQo+IHdpdGggaXQuIElmIHdlIGRlY2lkZSB0byBleHBvcnQgZXZlcnl0aGluZyAod2hpY2gg
SSBleHBlY3Qgd2Ugd2lsbCBuZWVkCj4gdG8gZG8pLCB0aGVuIEkgd291bGQgY2hhbmdlIG15IGNy
YXNoKDgpIGltcGxlbWVudGF0aW9uIHRvIGFsc28gcmVseSBvbmx5Cj4gb24gdGhlIFZNQ09SRUlO
Rk8uIEkgc2VlIG5vIHBvaW50IGluIGhhdmluZyBzb21lIGltcGxlbWVudGF0aW9ucyB1c2luZwo+
IGRlYnVnIGRhdGEgYW5kIG90aGVyIGltcGxlbWVudGF0aW9ucyB1c2luZyBWTUNPUkVJTkZPIGRh
dGEsIGlmCj4gVk1DT1JFSU5GTyBoYXMgZXZlcnl0aGluZyB0aGF0IGlzIG5lZWRlZC4KClBsZWFz
ZSBkb24ndCAtLSB0aGUgY3Jhc2ggdXRpbGl0eSBzdXBwb3J0cyB+MTUgZGlmZmVyZW50IGR1bXBm
aWxlCmZvcm1hdHMsIHRoZSBtYWpvcml0eSBvZiB3aGljaCBkbyAqbm90KiBjb250YWluIFZNQ09S
RUlORk8gZGF0YS4KCkZvciB0aGF0IHJlYXNvbiwgSSB0cnkgdG8gYXZvaWQgdXNpbmcgVk1DT1JF
SU5GTyBkYXRhIHdoZW5ldmVyIHBvc3NpYmxlLApwcmVjaXNlbHkgYmVjYXVzZSB0aGUgcmVsZXZh
bnQgZGF0YSBjYW4gYmUgZ2F0aGVyZWQgZnJvbSB0aGUgdm1saW51eCBzeW1ib2wKdGFibGUgYW5k
IGRlYnVnaW5mbyBkYXRhLgoKRGF2ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
