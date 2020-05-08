Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9346B1CA656
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 10:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlAGAjb9fZsCxbqnxjHO/U2DSGmSNXmZ9mGyG2cTszI=; b=OJritk50usjbTB
	17f9aM9/5oaHJvKF3ZSW26xf1RfPJM1WylK4NKel+Yn7qujHnCGtpS8hqAb76sV79GkqlDVwQnSBy
	FjdojBAg9o2J3eAwOOWR/0hrQZ7sXIo2NJAymkwe5dLgIngz152ypBbHPcZ6SgH5gxjch2Cdh+dPU
	O+C5xxMCTPa99xXf/Z6Qpx4BcycS+t5G9TwaXVfJsVU8I4U1abyAJyjyKxhQGQTUSzpRVl7OjJNCg
	UNl0b3vxos6+0Lladl+N1RPUM8DtEKQrQOPsPtqp5CS9yHveujd0QX0w+hT2ulDuLS1vhskG4wwGr
	dQ7CbwbKb1YkNAh2Wwuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyai-0004Uu-J2; Fri, 08 May 2020 08:42:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyag-0004Ty-LM
 for kexec@bombadil.infradead.org; Fri, 08 May 2020 08:42:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=HDqdz7vUW07g8cOkfmGPIO8ov0KvSWCkjJFS1FzKfW0=; b=VShw6h9GyMbCUvUEoML5QR1tlI
 zgJuwUHo2LJuJ3uRQReRsjJHDFh4mBAC9Cqa3KnMhJFULOVnm7suxa/QSDSUmsk8Z8vln23OIQQtD
 PB84RsW4zklM3MEochL/v2r8dzmVw4Gf5zYDCoOiXHvCZmxeHcfCRATay5Duhjjk8gTqf4wuJcUSe
 AZRiuz70Mc1R0jbXyrLUbbMLwrwkHrdz5dkezxoZg8O1R+/sErcxyGcLkFqTpfgcepGaqTBSFyM47
 mwbB4SbvZZtDlNKjpofbP+epTUnAtBYe0AP6jF8FmsDk/Nq+V5pFwbmPX7FsM/ZqaOAx/HDwUJjVC
 evhQcx8w==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyac-0004Jc-QA
 for kexec@lists.infradead.org; Fri, 08 May 2020 08:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588927356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HDqdz7vUW07g8cOkfmGPIO8ov0KvSWCkjJFS1FzKfW0=;
 b=KgELIlqoT/Gzay5TM23oNfJiFXsV2VnmItnz92sU7H84Ih2kF35E25ynK+GPOAMtl/yHqI
 +d6DD5nflh7JjjzrsT7iGzI7HRDPYElzhTusKOP7E4tWXMAra6qe0VL9c4VkSFDwWF2I87
 H/m9/jOCpBcfgI3ufnvnEwAlGwjiIKU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588927356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HDqdz7vUW07g8cOkfmGPIO8ov0KvSWCkjJFS1FzKfW0=;
 b=KgELIlqoT/Gzay5TM23oNfJiFXsV2VnmItnz92sU7H84Ih2kF35E25ynK+GPOAMtl/yHqI
 +d6DD5nflh7JjjzrsT7iGzI7HRDPYElzhTusKOP7E4tWXMAra6qe0VL9c4VkSFDwWF2I87
 H/m9/jOCpBcfgI3ufnvnEwAlGwjiIKU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-tly-VFRPOxOjTHrhhsV3FQ-1; Fri, 08 May 2020 04:42:32 -0400
X-MC-Unique: tly-VFRPOxOjTHrhhsV3FQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41EEE8018AB;
 Fri,  8 May 2020 08:42:31 +0000 (UTC)
Received: from t480s.redhat.com (ovpn-113-181.ams2.redhat.com [10.36.113.181])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F93E5C1B0;
 Fri,  8 May 2020 08:42:28 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] device-dax: Don't leak kernel memory to user space
 after unloading kmem
Date: Fri,  8 May 2020 10:42:14 +0200
Message-Id: <20200508084217.9160-2-david@redhat.com>
In-Reply-To: <20200508084217.9160-1-david@redhat.com>
References: <20200508084217.9160-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dave Jiang <dave.jiang@intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, linux-nvdimm@lists.01.org,
 Vishal Verma <vishal.l.verma@intel.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, stable@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

QXNzdW1lIHdlIGhhdmUga21lbSBjb25maWd1cmVkIGFuZCBsb2FkZWQ6CiAgW3Jvb3RAbG9jYWxo
b3N0IH5dIyBjYXQgL3Byb2MvaW9tZW0KICAuLi4KICAxNDAwMDAwMDAtMzNmZmZmZmZmIDogUGVy
c2lzdGVudCBNZW1vcnkkCiAgICAxNDAwMDAwMDAtMTQ4MWZmZmZmIDogbmFtZXNwYWNlMC4wCiAg
ICAxNTAwMDAwMDAtMzNmZmZmZmZmIDogZGF4MC4wCiAgICAgIDE1MDAwMDAwMC0zM2ZmZmZmZmYg
OiBTeXN0ZW0gUkFNCgpBc3N1bWUgd2UgdHJ5IHRvIHVubG9hZCBrbWVtLiBUaGlzIGZvcmNlLXVu
bG9hZGluZyB3aWxsIHdvcmssIGV2ZW4gaWYKbWVtb3J5IGNhbm5vdCBnZXQgcmVtb3ZlZCBmcm9t
IHRoZSBzeXN0ZW0uCiAgW3Jvb3RAbG9jYWxob3N0IH5dIyBybW1vZCBrbWVtCiAgWyAgIDg2LjM4
MDIyOF0gcmVtb3ZpbmcgbWVtb3J5IGZhaWxzLCBiZWNhdXNlIG1lbW9yeSBbMHgwMDAwMDAwMTUw
MDAwMDAwLTB4MDAwMDAwMDE1N2ZmZmZmZl0gaXMgb25saW5lZAogIC4uLgogIFsgICA4Ni40MzEy
MjVdIGttZW0gZGF4MC4wOiBEQVggcmVnaW9uIFttZW0gMHgxNTAwMDAwMDAtMHgzM2ZmZmZmZmZd
IGNhbm5vdCBiZSBob3RyZW1vdmVkIHVudGlsIHRoZSBuZXh0IHJlYm9vdAoKTm93LCB3ZSBjYW4g
cmVjb25maWd1cmUgdGhlIG5hbWVzcGFjZToKICBbcm9vdEBsb2NhbGhvc3Qgfl0jIG5kY3RsIGNy
ZWF0ZS1uYW1lc3BhY2UgLS1mb3JjZSAtLXJlY29uZmlnPW5hbWVzcGFjZTAuMCAtLW1vZGU9ZGV2
ZGF4CiAgWyAgMTMxLjQwOTM1MV0gbmRfcG1lbSBuYW1lc3BhY2UwLjA6IGNvdWxkIG5vdCByZXNl
cnZlIHJlZ2lvbiBbbWVtIDB4MTQwMDAwMDAwLTB4MzNmZmZmZmZmXWRheAogIFsgIDEzMS40MTAx
NDddIG5kX3BtZW06IHByb2JlIG9mIG5hbWVzcGFjZTAuMCBmYWlsZWQgd2l0aCBlcnJvciAtMTZu
YW1lc3BhY2UwLjAgLS1tb2RlPWRldmRheAogIC4uLgoKVGhpcyBmYWlscyBhcyBleHBlY3RlZCBk
dWUgdG8gdGhlIGJ1c3kgbWVtb3J5IHJlc291cmNlLCBhbmQgdGhlIG1lbW9yeQpjYW5ub3QgYmUg
dXNlZC4gSG93ZXZlciwgdGhlIGRheDAuMCBkZXZpY2UgaXMgcmVtb3ZlZCwgYW5kIGFsb25nIGl0
cyBuYW1lLgoKVGhlIG5hbWUgb2YgdGhlIG1lbW9yeSByZXNvdXJjZSBub3cgcG9pbnRzIGF0IGZy
ZWVkIG1lbW9yeSAobmFtZSBvZiB0aGUKZGV2aWNlKS4KICBbcm9vdEBsb2NhbGhvc3Qgfl0jIGNh
dCAvcHJvYy9pb21lbQogIC4uLgogIDE0MDAwMDAwMC0zM2ZmZmZmZmYgOiBQZXJzaXN0ZW50IE1l
bW9yeQogICAgMTQwMDAwMDAwLTE0ODFmZmZmZiA6IG5hbWVzcGFjZTAuMAogICAgMTUwMDAwMDAw
LTMzZmZmZmZmZiA6IO+/vV/vv71eN1/vv73vv70vX++/ve+/vXdS77+977+9V1Hvv73vv73vv71e
77+977+977+9IC4uLgogICAgMTUwMDAwMDAwLTMzZmZmZmZmZiA6IFN5c3RlbSBSQU0KCldlIGhh
dmUgdG8gbWFrZSBzdXJlIHRvIGR1cGxpY2F0ZSB0aGUgc3RyaW5nLiBXaGlsZSBhdCBpdCwgcmVt
b3ZlIHRoZQpzdXBlcmZsdW91cyBzZXR0aW5nIG9mIHRoZSBuYW1lIGFuZCBmaXh1cCBhIHN0YWxl
IGNvbW1lbnQuCgpGaXhlczogOWY5NjBkYTcyYjI1ICgiZGV2aWNlLWRheDogIkhvdHJlbW92ZSIg
cGVyc2lzdGVudCBtZW1vcnkgdGhhdCBpcyB1c2VkIGxpa2Ugbm9ybWFsIFJBTSIpCkNjOiBzdGFi
bGVAdmdlci5rZXJuZWwub3JnICMgdjUuMwpDYzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFt
c0BpbnRlbC5jb20+CkNjOiBWaXNoYWwgVmVybWEgPHZpc2hhbC5sLnZlcm1hQGludGVsLmNvbT4K
Q2M6IERhdmUgSmlhbmcgPGRhdmUuamlhbmdAaW50ZWwuY29tPgpDYzogUGF2ZWwgVGF0YXNoaW4g
PHBhc2hhLnRhdGFzaGluQHNvbGVlbi5jb20+CkNjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4
LWZvdW5kYXRpb24ub3JnPgpTaWduZWQtb2ZmLWJ5OiBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRA
cmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL2RheC9rbWVtLmMgfCAxNCArKysrKysrKysrKy0tLQog
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kYXgva21lbS5jIGIvZHJpdmVycy9kYXgva21lbS5jCmluZGV4IDNkMGE3
ZTcwMmM5NC4uMWU2NzhiZGY1YWVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RheC9rbWVtLmMKKysr
IGIvZHJpdmVycy9kYXgva21lbS5jCkBAIC0yMiw2ICsyMiw3IEBAIGludCBkZXZfZGF4X2ttZW1f
cHJvYmUoc3RydWN0IGRldmljZSAqZGV2KQogCXJlc291cmNlX3NpemVfdCBrbWVtX3NpemU7CiAJ
cmVzb3VyY2Vfc2l6ZV90IGttZW1fZW5kOwogCXN0cnVjdCByZXNvdXJjZSAqbmV3X3JlczsKKwlj
b25zdCBjaGFyICpuZXdfcmVzX25hbWU7CiAJaW50IG51bWFfbm9kZTsKIAlpbnQgcmM7CiAKQEAg
LTQ4LDExICs0OSwxNiBAQCBpbnQgZGV2X2RheF9rbWVtX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRl
dikKIAlrbWVtX3NpemUgJj0gfihtZW1vcnlfYmxvY2tfc2l6ZV9ieXRlcygpIC0gMSk7CiAJa21l
bV9lbmQgPSBrbWVtX3N0YXJ0ICsga21lbV9zaXplOwogCi0JLyogUmVnaW9uIGlzIHBlcm1hbmVu
dGx5IHJlc2VydmVkLiAgSG90LXJlbW92ZSBub3QgeWV0IGltcGxlbWVudGVkLiAqLwotCW5ld19y
ZXMgPSByZXF1ZXN0X21lbV9yZWdpb24oa21lbV9zdGFydCwga21lbV9zaXplLCBkZXZfbmFtZShk
ZXYpKTsKKwluZXdfcmVzX25hbWUgPSBrc3RyZHVwKGRldl9uYW1lKGRldiksIEdGUF9LRVJORUwp
OworCWlmICghbmV3X3Jlc19uYW1lKQorCQlyZXR1cm4gLUVOT01FTTsKKworCS8qIFJlZ2lvbiBp
cyBwZXJtYW5lbnRseSByZXNlcnZlZCBpZiBob3RyZW1vdmUgZmFpbHMuICovCisJbmV3X3JlcyA9
IHJlcXVlc3RfbWVtX3JlZ2lvbihrbWVtX3N0YXJ0LCBrbWVtX3NpemUsIG5ld19yZXNfbmFtZSk7
CiAJaWYgKCFuZXdfcmVzKSB7CiAJCWRldl93YXJuKGRldiwgImNvdWxkIG5vdCByZXNlcnZlIHJl
Z2lvbiBbJXBhLSVwYV1cbiIsCiAJCQkgJmttZW1fc3RhcnQsICZrbWVtX2VuZCk7CisJCWtmcmVl
KG5ld19yZXNfbmFtZSk7CiAJCXJldHVybiAtRUJVU1k7CiAJfQogCkBAIC02MywxMiArNjksMTIg
QEAgaW50IGRldl9kYXhfa21lbV9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJICogdW5rbm93
biB0byB1cyB0aGF0IHdpbGwgYnJlYWsgYWRkX21lbW9yeSgpIGJlbG93LgogCSAqLwogCW5ld19y
ZXMtPmZsYWdzID0gSU9SRVNPVVJDRV9TWVNURU1fUkFNOwotCW5ld19yZXMtPm5hbWUgPSBkZXZf
bmFtZShkZXYpOwogCiAJcmMgPSBhZGRfbWVtb3J5KG51bWFfbm9kZSwgbmV3X3Jlcy0+c3RhcnQs
IHJlc291cmNlX3NpemUobmV3X3JlcykpOwogCWlmIChyYykgewogCQlyZWxlYXNlX3Jlc291cmNl
KG5ld19yZXMpOwogCQlrZnJlZShuZXdfcmVzKTsKKwkJa2ZyZWUobmV3X3Jlc19uYW1lKTsKIAkJ
cmV0dXJuIHJjOwogCX0KIAlkZXZfZGF4LT5kYXhfa21lbV9yZXMgPSBuZXdfcmVzOwpAQCAtODMs
NiArODksNyBAQCBzdGF0aWMgaW50IGRldl9kYXhfa21lbV9yZW1vdmUoc3RydWN0IGRldmljZSAq
ZGV2KQogCXN0cnVjdCByZXNvdXJjZSAqcmVzID0gZGV2X2RheC0+ZGF4X2ttZW1fcmVzOwogCXJl
c291cmNlX3NpemVfdCBrbWVtX3N0YXJ0ID0gcmVzLT5zdGFydDsKIAlyZXNvdXJjZV9zaXplX3Qg
a21lbV9zaXplID0gcmVzb3VyY2Vfc2l6ZShyZXMpOworCWNvbnN0IGNoYXIgKnJlc19uYW1lID0g
cmVzLT5uYW1lOwogCWludCByYzsKIAogCS8qCkBAIC0xMDIsNiArMTA5LDcgQEAgc3RhdGljIGlu
dCBkZXZfZGF4X2ttZW1fcmVtb3ZlKHN0cnVjdCBkZXZpY2UgKmRldikKIAkvKiBSZWxlYXNlIGFu
ZCBmcmVlIGRheCByZXNvdXJjZXMgKi8KIAlyZWxlYXNlX3Jlc291cmNlKHJlcyk7CiAJa2ZyZWUo
cmVzKTsKKwlrZnJlZShyZXNfbmFtZSk7CiAJZGV2X2RheC0+ZGF4X2ttZW1fcmVzID0gTlVMTDsK
IAogCXJldHVybiAwOwotLSAKMi4yNS40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
