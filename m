Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67678190895
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 10:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6frm6Roc+bdrKezIH1UqnPnBcCpxowCSoOm3+rsYaU=; b=aoIwi+0uSLu+KV
	GTyJhe0fzHXrqE6xJySvAyqj0eAW3qkb23+T6/fYS8MVLh9R5MhQmHiumKiLQ+wqilIz6MR0p9qTJ
	UaFm7wqT17QZlMAZwdGUXdP/xIhuFgMaNOQE9MOQvSL/b0VJqFtNlMJRH8P10I/kKMMzl+Bs7MbVp
	msLiC4Ac5jBbnU5gbcoeBu5pZlO04j/f82+zO/v2l0Y1Wn84vL3ItJfu9FX0XdqFTDvR3xNlQida4
	k/2+RPWDiSYfHrCUnxq1l2H7eCMSWi6o5Pc7ILn4RV/3ioPZuGjx65rAYSH/GN+IWrijMnS73CKdp
	I7iSFldyNAOBvtOrasOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfaw-00076w-28; Tue, 24 Mar 2020 09:11:34 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfas-00075n-DA
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 09:11:32 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200324091127epoutp048669f8a99133e6d734d3ead0250113fc~-MnihiVKQ2252322523epoutp04-
 for <kexec@lists.infradead.org>; Tue, 24 Mar 2020 09:11:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200324091127epoutp048669f8a99133e6d734d3ead0250113fc~-MnihiVKQ2252322523epoutp04-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585041087;
 bh=OTYMYYI8jGaIHO8LtsuVm3vXVt7kXP3LgI5H0A5a8Mc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=RO99FjyJV0y9bQBFfjDeI13v10NYRqs7l7LkBeo+iiMBJHs0B7sioNKo7bNrIYAb8
 qNMg2wTz1W0ytnGgpwCcpa6WJDjN8+BV53lBnM+7o9SYJP7zmRZuSqShdg94LgtDxc
 zG+NXOlID0JmN3WaXKe1LQGBvP8iUXmV+pDSyK3M=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200324091127epcas1p4dcb3fc7c0d8abaec70261beea1f2f831~-MniKux-R2789027890epcas1p4l;
 Tue, 24 Mar 2020 09:11:27 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.165]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 48mlqL1LhmzMqYkm; Tue, 24 Mar
 2020 09:11:26 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 81.D1.04074.EBEC97E5; Tue, 24 Mar 2020 18:11:26 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200324091125epcas1p43356a6bb4bf77d743551fed71e35cbc4~-MngqnBHy2789027890epcas1p4k;
 Tue, 24 Mar 2020 09:11:25 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200324091125epsmtrp2992a6580c65a01b6a18d653848caecde~-MngpNXlf2923129231epsmtrp2c;
 Tue, 24 Mar 2020 09:11:25 +0000 (GMT)
X-AuditID: b6c32a39-573ff70000000fea-c6-5e79cebef20f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.86.04024.DBEC97E5; Tue, 24 Mar 2020 18:11:25 +0900 (KST)
Received: from [10.253.104.82] (unknown [10.253.104.82]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200324091123epsmtip1e79651d15bbe092e7a442b916ede3129~-Mne7lSLB3263532635epsmtip1J;
 Tue, 24 Mar 2020 09:11:23 +0000 (GMT)
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
To: Greg KH <gregkh@linuxfoundation.org>
From: Jaewon Kim <jaewon31.kim@samsung.com>
Message-ID: <5E79CEB5.8070308@samsung.com>
Date: Tue, 24 Mar 2020 18:11:17 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <20200323095344.GB425358@kroah.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmnu6+c5VxBne2s1pMb/SymLN+DZvF
 +Qe/2CyaF69ns+jePJPRYvm704wWu09/ZbJYuecHk8WUX0uZLTZ/72CzuLxrDpvFvTX/WS2W
 fX3PbrGhZRa7xaMJk5gsTt39zG4xu7GP0UHQY+esu+wem1Z1snls+jSJ3ePOtT1sHidm/Gbx
 2D93DbvH5iX1Hu/3XWXzOLPgCLvHzk+bWT0+b5IL4I7KsclITUxJLVJIzUvOT8nMS7dV8g6O
 d443NTMw1DW0tDBXUshLzE21VXLxCdB1y8wBekpJoSwxpxQoFJBYXKykb2dTlF9akqqQkV9c
 YquUWpCSU2BoUKBXnJhbXJqXrpecn2tlaGBgZApUmZCT0bFiPmPBG/mK9Yu2szYwHpfsYuTk
 kBAwkfjwfT8jiC0ksINRomNLcRcjF5D9iVHizJdvbBDON0aJSXcvM8J0LDjxGCqxl1Hi/K+V
 7BDOW0aJky032UCqhAXcJP5tPQ9miwhoSLw8eosFpIhZ4DuTxPHFX5hAEmwC2hLvF0xiBbF5
 BbQkFk7qA1vBIqAqMW3iExYQW1QgQmLH3I+MEDWCEidngsQ5ODgFDCQ6XtmChJkF5CWat85m
 BpkvIXCKXWLd4r+sEKe6SJxY/IcNwhaWeHV8CzuELSXx+d1eNoiGZkaJtzM3M0I4LYwSdzf1
 Qj1qLNHbc4EZZBuzgKbE+l36EGFFiZ2/5zJCbOaTePe1hxWkREKAV6KjTQiiRE2i5dlXqBtk
 JP7+ewZV4iFx/p8aJKxfMkqs+acxgVFhFpLPZiF5ZxbC3gWMzKsYxVILinPTU4sNC0yRY3gT
 IziVa1nuYDx2zucQowAHoxIP74ZpFXFCrIllxZW5hxglOJiVRHg3pwKFeFMSK6tSi/Lji0pz
 UosPMZoCA3sis5Rocj4wz+SVxBuaGhkbG1uYmJmbmRorifNOvZ4TJySQnliSmp2aWpBaBNPH
 xMEp1cAY7jHPYunHTO3MR0u4+/75Kl5mXsyd8cpw2w4V6z6HVrMJVyy3dB6wYXiYyDJjk5tc
 U5i1ckh4zeVM8Z19yw9Nn3z+k8u1XV+ns95xuZp3+DXHl4DN8fm7U+qawxde++3qsv9J14vl
 3DGbZV78e/iwQvVYVFLQysvZFzfMi92Su5331Fo+qWNNSizFGYmGWsxFxYkAkolgUfsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsWy7bCSnO7ec5VxBv0nxS2mN3pZzFm/hs3i
 /INfbBbNi9ezWXRvnslosfzdaUaL3ae/Mlms3PODyWLKr6XMFpu/d7BZXN41h83i3pr/rBbL
 vr5nt9jQMovd4tGESUwWp+5+ZreY3djH6CDosXPWXXaPTas62Tw2fZrE7nHn2h42jxMzfrN4
 7J+7ht1j85J6j/f7rrJ5nFlwhN1j56fNrB6fN8kFcEdx2aSk5mSWpRbp2yVwZXSsmM9Y8Ea+
 Yv2i7awNjMcluxg5OSQETCQWnHjM1sXIxSEksJtR4k/DLFaIhIzEm/NPWboYOYBsYYnDh4sh
 al4zSmw/180MUiMs4Cbxb+t5NhBbREBD4uXRWywQRS8ZJSb+PgXmMAt8Z5K41HcIrIpNQFvi
 /YJJYBt4BbQkFk7qYwSxWQRUJaZNfMICYosKREisXneNGaJGUOLkzCdgV3AKGEh0vLIFMZkF
 1CXWzxMCqWAWkJdo3jqbeQKj4CwkDbMQqmYhqVrAyLyKUTK1oDg3PbfYsMAwL7Vcrzgxt7g0
 L10vOT93EyM4PrU0dzBeXhJ/iFGAg1GJh5djZkWcEGtiWXFl7iFGCQ5mJRHezalAId6UxMqq
 1KL8+KLSnNTiQ4zSHCxK4rxP845FCgmkJ5akZqemFqQWwWSZODilGhi7/hjbPHkgOmc2n8rx
 8L7rHJtnWc+e68UhILcy5u7rG+xXD3xxP91q/2eJLFNCwsWHRufspiqrLrqjd+x05/HquSFF
 TWsZH9aVuH9Y5bAv/4pYiJLfFQP/pvhmJff4Zb9mnZsTtXmxUdyjeescHkZasIVVuRQa9GaH
 biplaTm1pmPVSR/bebOVWIozEg21mIuKEwHTU5jhywIAAA==
X-CMS-MailID: 20200324091125epcas1p43356a6bb4bf77d743551fed71e35cbc4
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_021130_875496_32AC6D9B 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: sergey.senozhatsky.work@gmail.com, leon@kernel.org, linux-mm@kvack.org,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, adobriyan@gmail.com, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiAyMDIw64WEIDAz7JuUIDIz7J28IDE4OjUzLCBHcmVnIEtIIHdyb3RlOgo+IE9uIE1vbiwg
TWFyIDIzLCAyMDIwIGF0IDA1OjA1OjAxUE0gKzA5MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4+IFBy
b3ZpZGUgQVBJcyB0byBkcml2ZXJzIHNvIHRoYXQgdGhleSBjYW4gc2hvdyBpdHMgbWVtb3J5IHVz
YWdlIG9uCj4+IC9wcm9jL21lbWluZm9fZXh0cmEuCj4+Cj4+IGludCByZWdpc3Rlcl9tZW1pbmZv
X2V4dHJhKGF0b21pY19sb25nX3QgKnZhbCwgaW50IHNoaWZ0LAo+PiAJCQkgICBjb25zdCBjaGFy
ICpuYW1lKTsKPj4gaW50IHVucmVnaXN0ZXJfbWVtaW5mb19leHRyYShhdG9taWNfbG9uZ190ICp2
YWwpOwo+IE5pdCwgaXNuJ3QgaXQgbmljZXIgdG8gaGF2ZSB0aGUgc3Vic3lzdGVtIG5hbWUgZmly
c3Q6Cj4gCW1lbWluZm9fZXh0cmFfcmVnaXN0ZXIoKQo+IAltZW1pbmZvX2V4dHJhX3VucmVnaXN0
ZXIoKQo+ID8KT0suIE5hbWUgY2FuIGJlIGNoYW5nZWQuCj4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBK
YWV3b24gS2ltIDxqYWV3b24zMS5raW1Ac2Ftc3VuZy5jb20+Cj4+IC0tLQo+PiB2MjogbW92ZSB0
byAvcHJvYy9tZW1pbmZvX2V4dHJhIGFzIGEgbmV3IGZpbGUsIG1lbWluZm9fZXh0cmEuYwo+PiAg
ICAgdXNlIHJjdSB0byByZWR1Y2UgbG9jayBvdmVyaGVhZAo+PiB2MTogcHJpbnQgaW5mbyBhdCAv
cHJvYy9tZW1pbmZvCj4+IC0tLQo+PiAgZnMvcHJvYy9NYWtlZmlsZSAgICAgICAgfCAgIDEgKwo+
PiAgZnMvcHJvYy9tZW1pbmZvX2V4dHJhLmMgfCAxMjMgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4+ICBpbmNsdWRlL2xpbnV4L21tLmggICAgICB8ICAg
NCArKwo+PiAgbW0vcGFnZV9hbGxvYy5jICAgICAgICAgfCAgIDEgKwo+PiAgNCBmaWxlcyBjaGFu
Z2VkLCAxMjkgaW5zZXJ0aW9ucygrKQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL3Byb2MvbWVt
aW5mb19leHRyYS5jCj4+Cj4+IGRpZmYgLS1naXQgYS9mcy9wcm9jL01ha2VmaWxlIGIvZnMvcHJv
Yy9NYWtlZmlsZQo+PiBpbmRleCBiZDA4NjE2ZWQ4YmEuLjgzZDJmNTU1OTFjNiAxMDA2NDQKPj4g
LS0tIGEvZnMvcHJvYy9NYWtlZmlsZQo+PiArKysgYi9mcy9wcm9jL01ha2VmaWxlCj4+IEBAIC0x
OSw2ICsxOSw3IEBAIHByb2MteQkrPSBkZXZpY2VzLm8KPj4gIHByb2MteQkrPSBpbnRlcnJ1cHRz
Lm8KPj4gIHByb2MteQkrPSBsb2FkYXZnLm8KPj4gIHByb2MteQkrPSBtZW1pbmZvLm8KPj4gK3By
b2MteQkrPSBtZW1pbmZvX2V4dHJhLm8KPj4gIHByb2MteQkrPSBzdGF0Lm8KPj4gIHByb2MteQkr
PSB1cHRpbWUubwo+PiAgcHJvYy15CSs9IHV0aWwubwo+PiBkaWZmIC0tZ2l0IGEvZnMvcHJvYy9t
ZW1pbmZvX2V4dHJhLmMgYi9mcy9wcm9jL21lbWluZm9fZXh0cmEuYwo+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmJkM2YwZDJiN2ZiNwo+PiAtLS0gL2Rldi9u
dWxsCj4+ICsrKyBiL2ZzL3Byb2MvbWVtaW5mb19leHRyYS5jCj4+IEBAIC0wLDAgKzEsMTIzIEBA
Cj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+PiArI2luY2x1ZGUgPGxp
bnV4L21tLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcHJvY19mcy5oPgo+PiArI2luY2x1ZGUgPGxp
bnV4L3NlcV9maWxlLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+PiArCj4+ICtzdGF0
aWMgdm9pZCBzaG93X3ZhbF9rYihzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIGNvbnN0IGNoYXIgKnMsIHVu
c2lnbmVkIGxvbmcgbnVtKQo+PiArewo+PiArCXNlcV9wdXRfZGVjaW1hbF91bGxfd2lkdGgobSwg
cywgbnVtIDw8IChQQUdFX1NISUZUIC0gMTApLCA4KTsKPj4gKwlzZXFfd3JpdGUobSwgIiBrQlxu
IiwgNCk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBMSVNUX0hFQUQobWVtaW5mb19oZWFkKTsKPj4g
K3N0YXRpYyBERUZJTkVfU1BJTkxPQ0sobWVtaW5mb19sb2NrKTsKPj4gKwo+PiArI2RlZmluZSBO
QU1FX1NJWkUgICAgICAxNQo+PiArI2RlZmluZSBOQU1FX0JVRl9TSVpFICAoTkFNRV9TSVpFICsg
MikgLyogJzonIGFuZCAnXDAnICovCj4+ICsKPj4gK3N0cnVjdCBtZW1pbmZvX2V4dHJhIHsKPj4g
KwlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7Cj4+ICsJYXRvbWljX2xvbmdfdCAqdmFsOwo+PiArCWlu
dCBzaGlmdF9mb3JfcGFnZTsKPj4gKwljaGFyIG5hbWVbTkFNRV9CVUZfU0laRV07Cj4+ICsJY2hh
ciBuYW1lX3BhZFtOQU1FX0JVRl9TSVpFXTsKPj4gK307Cj4+ICsKPj4gK2ludCByZWdpc3Rlcl9t
ZW1pbmZvX2V4dHJhKGF0b21pY19sb25nX3QgKnZhbCwgaW50IHNoaWZ0LCBjb25zdCBjaGFyICpu
YW1lKQo+PiArewo+PiArCXN0cnVjdCBtZW1pbmZvX2V4dHJhICptZW1pbmZvLCAqbWVtdGVtcDsK
Pj4gKwlpbnQgbGVuOwo+PiArCWludCBlcnJvciA9IDA7Cj4+ICsKPj4gKwltZW1pbmZvID0ga3ph
bGxvYyhzaXplb2YoKm1lbWluZm8pLCBHRlBfS0VSTkVMKTsKPj4gKwlpZiAoIW1lbWluZm8pIHsK
Pj4gKwkJZXJyb3IgPSAtRU5PTUVNOwo+PiArCQlnb3RvIG91dDsKPj4gKwl9Cj4+ICsKPj4gKwlt
ZW1pbmZvLT52YWwgPSB2YWw7Cj4+ICsJbWVtaW5mby0+c2hpZnRfZm9yX3BhZ2UgPSBzaGlmdDsK
Pj4gKwlzdHJuY3B5KG1lbWluZm8tPm5hbWUsIG5hbWUsIE5BTUVfU0laRSk7Cj4+ICsJbGVuID0g
c3RybGVuKG1lbWluZm8tPm5hbWUpOwo+PiArCW1lbWluZm8tPm5hbWVbbGVuXSA9ICc6JzsKPj4g
KwlzdHJuY3B5KG1lbWluZm8tPm5hbWVfcGFkLCBtZW1pbmZvLT5uYW1lLCBOQU1FX0JVRl9TSVpF
KTsKPj4gKwl3aGlsZSAoKytsZW4gPCBOQU1FX0JVRl9TSVpFIC0gMSkKPj4gKwkJbWVtaW5mby0+
bmFtZV9wYWRbbGVuXSA9ICcgJzsKPj4gKwo+PiArCXNwaW5fbG9jaygmbWVtaW5mb19sb2NrKTsK
Pj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdShtZW10ZW1wLCAmbWVtaW5mb19oZWFkLCBsaXN0
KSB7Cj4+ICsJCWlmIChtZW10ZW1wLT52YWwgPT0gdmFsKSB7Cj4+ICsJCQllcnJvciA9IC1FSU5W
QUw7Cj4+ICsJCQlicmVhazsKPj4gKwkJfQo+PiArCX0KPj4gKwlpZiAoIWVycm9yKQo+PiArCQls
aXN0X2FkZF90YWlsX3JjdSgmbWVtaW5mby0+bGlzdCwgJm1lbWluZm9faGVhZCk7Cj4+ICsJc3Bp
bl91bmxvY2soJm1lbWluZm9fbG9jayk7Cj4gSWYgeW91IGhhdmUgYSBsb2NrLCB3aHkgYXJlIHlv
dSBuZWVkaW5nIHJjdT8KSSB0aGluayBfcmN1IHNob3VsZCBiZSByZW1vdmVkIG91dCBvZiBsaXN0
X2Zvcl9lYWNoX2VudHJ5X3JjdS4KQnV0IEknbSBjb25mdXNlZCBhYm91dCB3aGF0IHlvdSBtZWFu
dC4KSSB1c2VkIHJjdV9yZWFkX2xvY2sgb24gX19tZW1pbmZvX2V4dHJhLAphbmQgSSB0aGluayBz
cGluX2xvY2sgaXMgYWxzbyBuZWVkZWQgZm9yIGFkZGl0aW9uIGFuZCBkZWxldGlvbiB0byBoYW5k
bGUgbXVsdGlwbGUgbW9kaWZpZXJzLgo+Cj4KPgo+PiArCWlmIChlcnJvcikKPj4gKwkJa2ZyZWUo
bWVtaW5mbyk7Cj4+ICtvdXQ6Cj4+ICsKPj4gKwlyZXR1cm4gZXJyb3I7Cj4+ICt9Cj4+ICtFWFBP
UlRfU1lNQk9MKHJlZ2lzdGVyX21lbWluZm9fZXh0cmEpOwo+IEVYUE9SVF9TWU1CT0xfR1BMKCk/
ICBJIGhhdmUgdG8gYXNrIDopCkkgY2FuIHVzZSBFWFBPUlRfU1lNQk9MX0dQTC4KPgo+IHRoYW5r
cywKPgo+IGdyZWcgay1oCj4KPgoKSGVsbG8KVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnQuCgpC
eSB0aGUgd2F5IHRoZXJlIHdhcyBub3QgcmVzb2x2ZWQgZGlzY3Vzc2lvbiBvbiB2MSBwYXRjaCBh
cyBJIG1lbnRpb25lZCBvbiBjb3ZlciBwYWdlLgpJJ2QgbGlrZSB0byBoZWFyIHlvdXIgb3Bpbmlv
biBvbiB0aGlzIC9wcm9jL21lbWluZm9fZXh0cmEgbm9kZS4KRG8geW91IHRoaW5rIHRoaXMgaXMg
bWVhbmluZ2Z1bCBvciBjYW5ub3QgY28tZXhpc3Qgd2l0aCBvdGhlciBmdXR1cmUgc3lzZnMgYmFz
ZWQgQVBJLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
