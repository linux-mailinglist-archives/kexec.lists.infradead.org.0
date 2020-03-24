Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFB3190E27
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 13:53:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuPpkbMMGKtsgyt6t9DiQkIMApNHdpyPlXi/GDo6/6I=; b=ojIJ9J4RuxtdAe
	hVXsfKuuyMzrojR8Uuma9uHl6hLh+E7veOhLqANCn4yF+CYNHF1PWWdL4GCZrSGKc1N0alN6qfF6y
	klaKD0INBuXQsdJXrnwKif2VY41tH9LTOPCOJqHhvHsYNmZaZd+ol3pjCXgBUYj8i4I7R0t8cOhDC
	Peto/19tCwmUPbDR2F9/yO2ayKes0fZowWevO8SqSLmUUpEsXEqo5ArKs921tiFlCNguWhS6Q23fZ
	z4fjJwWxqBOkbVN4TcuqVyLdywa2Z3zqF9ififyxV9GG0cZypxqQhJfzsM5o8SrsUFbRutWfZKuhh
	FL6jxUNIcT8TetuaBCog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGj3m-0004Nf-I7; Tue, 24 Mar 2020 12:53:34 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGj3i-0004Mb-O7
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 12:53:32 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200324125321epoutp03cb9803113bb7b57425a11856d2aa5a1c~-PpR8ZMSs2888428884epoutp03M
 for <kexec@lists.infradead.org>; Tue, 24 Mar 2020 12:53:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200324125321epoutp03cb9803113bb7b57425a11856d2aa5a1c~-PpR8ZMSs2888428884epoutp03M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585054401;
 bh=qlC45ErpNVwg7dYO6PWOERNYjTpPbPeGroZhG4LafpI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=PXoe0VRtZoHeoMBZeIf7iLo1c+s+MaU1AqM90iyZHC2MbhHVcP8o31y9egdI5kzE0
 QPZF/waCSFqvpYhCn9wsOFMk0voq4ITdRQzgdnXiotyvvDyJmtkHz7KKI598keNKOF
 iASInO8IlYhUAd3bbEoyqR7gdUWcmGMMsTt+h7Do=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200324125320epcas1p14cfa62b0f9b1681fb6da54a92c677ea6~-PpReFjVd3181131811epcas1p1C;
 Tue, 24 Mar 2020 12:53:20 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.165]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48mrlM61KrzMqYlm; Tue, 24 Mar
 2020 12:53:19 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 F0.12.04071.FB20A7E5; Tue, 24 Mar 2020 21:53:19 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200324125318epcas1p2f378c2492fab03b9bd143cdf5c77bfe8~-PpPcXYKA2602726027epcas1p24;
 Tue, 24 Mar 2020 12:53:18 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200324125318epsmtrp1fd9695add65d8d37e0fb73fdedcae8fe~-PpPbZvQR1679716797epsmtrp1L;
 Tue, 24 Mar 2020 12:53:18 +0000 (GMT)
X-AuditID: b6c32a37-7afff70000000fe7-ca-5e7a02bfeb0c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 75.62.04024.EB20A7E5; Tue, 24 Mar 2020 21:53:18 +0900 (KST)
Received: from [10.253.104.82] (unknown [10.253.104.82]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200324125317epsmtip1dfa282c9d6f6ad018b2fc1b532a56a43~-PpOFKHMN2571325713epsmtip1P;
 Tue, 24 Mar 2020 12:53:17 +0000 (GMT)
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
To: Greg KH <gregkh@linuxfoundation.org>
From: Jaewon Kim <jaewon31.kim@samsung.com>
Message-ID: <5E7A02BC.7020803@samsung.com>
Date: Tue, 24 Mar 2020 21:53:16 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <20200324114645.GA2330984@kroah.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0wTZxjH8961d8Wt5iw6nzQTu0vQwQJcKYV3iywmY+Q2XcJmtiz+0e6k
 JyW7/livOOGf4dowx2RW5nRUIMTCcA0MbYEVFQ0wgz8WMVtkcRHndDEBB41gZcMM13KY8d/3
 eZ7P8z4/3vfVkLopSq+pdHpFj1OQWGqVqn8kKzfnPFFj4QJH8vDRfW/i5p4uCo/dXqCwL9RD
 4S+iTQh3zlxB+MyVBIG/O/s3gQ8vdJA4Or+fwr+cbqbwra4navxtIk7jk/4gje8EGgl8eWKO
 xsf2fYm2ruEHghM0Hwl/TvGR2Uaavzl+luIvfvNYxZ9v6aL5aPsnfPzcdYr/qe1Hmh+Yjar5
 uUhG2TM7pS12UbCJHoPoLHfZKp0Vxey2HdbXrOZCzphjfBkXsQan4BCL2ZLtZTmllVJyKNaw
 R5Cqkq4yQZbZvFe3eFxVXtFgd8neYlZ02yS3kXPnyoJDrnJW5Ja7HK8YOS7fnCQ/kOx/HZ2i
 3bdMe0PB63QtimfVozQNMAXwwz+d6nq0SqNjYgiOHB5EqYCOmUXQ/dCjBB4hqB8YVz3NuNQb
 WM4YRBAMhwjFmEYwON5Kpqh0phQW+8aolF7LvAiTF35TpSCSmSdgNPSQSAUo5iWItzWqU1rL
 ZMNnZ0bplFYxmXAudmPJv455H2ItD5DCrIFLTX8utZHGGGHh98gSQzIbwdd3jEwVAOYyDdGv
 PqWUXkvg0YODtKLTYWq0d1nrYfJgHa0k+BBMN0WRYvgRTEQakEKZoOHAteSxmmSJLOg5nae4
 X4CBxy1IqbwaZhIH1CkEGC3sr9MpyCbw30uoFf08/Lt4bxnhYWxxk7KtBAFD3T4qgAzBFbMF
 V8wT/L9wGyLD6DnRLTsqRNnoNq284whaeufZRTF08ur2YcRoEPustvZutUWnFvbI1Y5hBBqS
 XauNinstOq1NqK4RPS6rp0oS5WFkTq77EKlfV+5K/hqn12o055tMJlxQWFRoNrHrtV//Kll0
 TIXgFT8URbfoeZpHaNL0tYi4OxQz+L2vd0R6semtpv7KznCPHA1zh/q3tsfqbvpLdxzveDIm
 7Sr42X5icmTu46uF9d9nwIb53NZizjqt3+jO3BC4cC3/fu87b6weak7v7OYmbuz6434oPX68
 Lye7xlBy29Lev96w+72M1o/UM7a3fb6pd0caStPaM52nuM13SFYl2wVjNumRhf8ALX7jk/0D
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsWy7bCSnO4+pqo4gwfXZC2mN3pZzFm/hs3i
 /INfbBbNi9ezWXRvnslosfzdaUaL3ae/Mlms3PODyWLKr6XMFpu/d7BZXN41h83i3pr/rBbL
 vr5nt9jQMovd4tGESUwWp+5+ZreY3djH6CDosXPWXXaPTas62Tw2fZrE7nHn2h42jxMzfrN4
 7J+7ht1j85J6j/f7rrJ5nFlwhN1j56fNrB6fN8kFcEdx2aSk5mSWpRbp2yVwZbyZ/oq94J5x
 xeJZV9kbGN9rdjFyckgImEic3DKBtYuRi0NIYDejxOnJK1kgEjISb84/BbI5gGxhicOHi0HC
 QgKvGSUOLwwCsYUF3CT+bT3PBmKLCGhIvDx6iwVizlcmiccnTjCBOMwC35kkLvUdAqtiE9CW
 eL9gEiuIzSugJdG++zg7iM0ioCqxb8dNsLioQITE6nXXmCFqBCVOznwCdhCngKHEr/ubwGqY
 BdQl/sy7xAxhy0s0b53NPIFRcBaSlllIymYhKVvAyLyKUTK1oDg3PbfYsMAwL7Vcrzgxt7g0
 L10vOT93EyM4RrU0dzBeXhJ/iFGAg1GJh1frYWWcEGtiWXFl7iFGCQ5mJRHezakVcUK8KYmV
 ValF+fFFpTmpxYcYpTlYlMR5n+YdixQSSE8sSc1OTS1ILYLJMnFwSjUwLnc+6P297pAIJ5u7
 6d+yrPVVW9dUhMwoerA2oEFPhs3w6DSuCdptaX8qDN6mts48EWloLeHfFPTTvl7ipcmpSdk1
 hkt/rjR8YurqzBzNNZNhxrLNqucCjFXe/SsV7Dkk5escbN1+8NFLw4zeczrcdjvWxTxnKHzB
 3/SrkSmD7VTBrBns9c+VWIozEg21mIuKEwGN5ZnMzQIAAA==
X-CMS-MailID: 20200324125318epcas1p2f378c2492fab03b9bd143cdf5c77bfe8
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
 <20200324114645.GA2330984@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_055330_964798_C28F2F6B 
X-CRM114-Status: GOOD (  33.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
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

CgpPbiAyMDIw64WEIDAz7JuUIDI07J28IDIwOjQ2LCBHcmVnIEtIIHdyb3RlOgo+IE9uIFR1ZSwg
TWFyIDI0LCAyMDIwIGF0IDA4OjM3OjM4UE0gKzA5MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4+Cj4+
IE9uIDIwMjDrhYQgMDPsm5QgMjTsnbwgMTk6MTEsIEdyZWcgS0ggd3JvdGU6Cj4+PiBPbiBUdWUs
IE1hciAyNCwgMjAyMCBhdCAwNjoxMToxN1BNICswOTAwLCBKYWV3b24gS2ltIHdyb3RlOgo+Pj4+
IE9uIDIwMjDrhYQgMDPsm5QgMjPsnbwgMTg6NTMsIEdyZWcgS0ggd3JvdGU6Cj4+Pj4+PiAraW50
IHJlZ2lzdGVyX21lbWluZm9fZXh0cmEoYXRvbWljX2xvbmdfdCAqdmFsLCBpbnQgc2hpZnQsIGNv
bnN0IGNoYXIgKm5hbWUpCj4+Pj4+PiArewo+Pj4+Pj4gKwlzdHJ1Y3QgbWVtaW5mb19leHRyYSAq
bWVtaW5mbywgKm1lbXRlbXA7Cj4+Pj4+PiArCWludCBsZW47Cj4+Pj4+PiArCWludCBlcnJvciA9
IDA7Cj4+Pj4+PiArCj4+Pj4+PiArCW1lbWluZm8gPSBremFsbG9jKHNpemVvZigqbWVtaW5mbyks
IEdGUF9LRVJORUwpOwo+Pj4+Pj4gKwlpZiAoIW1lbWluZm8pIHsKPj4+Pj4+ICsJCWVycm9yID0g
LUVOT01FTTsKPj4+Pj4+ICsJCWdvdG8gb3V0Owo+Pj4+Pj4gKwl9Cj4+Pj4+PiArCj4+Pj4+PiAr
CW1lbWluZm8tPnZhbCA9IHZhbDsKPj4+Pj4+ICsJbWVtaW5mby0+c2hpZnRfZm9yX3BhZ2UgPSBz
aGlmdDsKPj4+Pj4+ICsJc3RybmNweShtZW1pbmZvLT5uYW1lLCBuYW1lLCBOQU1FX1NJWkUpOwo+
Pj4+Pj4gKwlsZW4gPSBzdHJsZW4obWVtaW5mby0+bmFtZSk7Cj4+Pj4+PiArCW1lbWluZm8tPm5h
bWVbbGVuXSA9ICc6JzsKPj4+Pj4+ICsJc3RybmNweShtZW1pbmZvLT5uYW1lX3BhZCwgbWVtaW5m
by0+bmFtZSwgTkFNRV9CVUZfU0laRSk7Cj4+Pj4+PiArCXdoaWxlICgrK2xlbiA8IE5BTUVfQlVG
X1NJWkUgLSAxKQo+Pj4+Pj4gKwkJbWVtaW5mby0+bmFtZV9wYWRbbGVuXSA9ICcgJzsKPj4+Pj4+
ICsKPj4+Pj4+ICsJc3Bpbl9sb2NrKCZtZW1pbmZvX2xvY2spOwo+Pj4+Pj4gKwlsaXN0X2Zvcl9l
YWNoX2VudHJ5X3JjdShtZW10ZW1wLCAmbWVtaW5mb19oZWFkLCBsaXN0KSB7Cj4+Pj4+PiArCQlp
ZiAobWVtdGVtcC0+dmFsID09IHZhbCkgewo+Pj4+Pj4gKwkJCWVycm9yID0gLUVJTlZBTDsKPj4+
Pj4+ICsJCQlicmVhazsKPj4+Pj4+ICsJCX0KPj4+Pj4+ICsJfQo+Pj4+Pj4gKwlpZiAoIWVycm9y
KQo+Pj4+Pj4gKwkJbGlzdF9hZGRfdGFpbF9yY3UoJm1lbWluZm8tPmxpc3QsICZtZW1pbmZvX2hl
YWQpOwo+Pj4+Pj4gKwlzcGluX3VubG9jaygmbWVtaW5mb19sb2NrKTsKPj4+Pj4gSWYgeW91IGhh
dmUgYSBsb2NrLCB3aHkgYXJlIHlvdSBuZWVkaW5nIHJjdT8KPj4+PiBJIHRoaW5rIF9yY3Ugc2hv
dWxkIGJlIHJlbW92ZWQgb3V0IG9mIGxpc3RfZm9yX2VhY2hfZW50cnlfcmN1Lgo+Pj4+IEJ1dCBJ
J20gY29uZnVzZWQgYWJvdXQgd2hhdCB5b3UgbWVhbnQuCj4+Pj4gSSB1c2VkIHJjdV9yZWFkX2xv
Y2sgb24gX19tZW1pbmZvX2V4dHJhLAo+Pj4+IGFuZCBJIHRoaW5rIHNwaW5fbG9jayBpcyBhbHNv
IG5lZWRlZCBmb3IgYWRkaXRpb24gYW5kIGRlbGV0aW9uIHRvIGhhbmRsZSBtdWx0aXBsZSBtb2Rp
ZmllcnMuCj4+PiBJZiB0aGF0J3MgdGhlIGNhc2UsIHRoZW4gdGhhdCdzIGZpbmUsIGl0IGp1c3Qg
ZGlkbid0IHNlZW0gbGlrZSB0aGF0IHdhcwo+Pj4gbmVlZGVkLiAgT3IgSSBtaWdodCBoYXZlIGJl
ZW4gcmVhZGluZyB5b3VyIHJjdSBsb2dpYyBpbmNvcnJlY3RseS4uLgo+Pj4KPj4+Pj4+ICsJaWYg
KGVycm9yKQo+Pj4+Pj4gKwkJa2ZyZWUobWVtaW5mbyk7Cj4+Pj4+PiArb3V0Ogo+Pj4+Pj4gKwo+
Pj4+Pj4gKwlyZXR1cm4gZXJyb3I7Cj4+Pj4+PiArfQo+Pj4+Pj4gK0VYUE9SVF9TWU1CT0wocmVn
aXN0ZXJfbWVtaW5mb19leHRyYSk7Cj4+Pj4+IEVYUE9SVF9TWU1CT0xfR1BMKCk/ICBJIGhhdmUg
dG8gYXNrIDopCj4+Pj4gSSBjYW4gdXNlIEVYUE9SVF9TWU1CT0xfR1BMLgo+Pj4+PiB0aGFua3Ms
Cj4+Pj4+Cj4+Pj4+IGdyZWcgay1oCj4+Pj4+Cj4+Pj4+Cj4+Pj4gSGVsbG8KPj4+PiBUaGFuayB5
b3UgZm9yIHlvdXIgY29tbWVudC4KPj4+Pgo+Pj4+IEJ5IHRoZSB3YXkgdGhlcmUgd2FzIG5vdCBy
ZXNvbHZlZCBkaXNjdXNzaW9uIG9uIHYxIHBhdGNoIGFzIEkgbWVudGlvbmVkIG9uIGNvdmVyIHBh
Z2UuCj4+Pj4gSSdkIGxpa2UgdG8gaGVhciB5b3VyIG9waW5pb24gb24gdGhpcyAvcHJvYy9tZW1p
bmZvX2V4dHJhIG5vZGUuCj4+PiBJIHRoaW5rIGl0IGlzIHRoZSBwcm9wYWdhdGlvbiBvZiBhbiBv
bGQgYW5kIG9ic29sZXRlIGludGVyZmFjZSB0aGF0IHlvdQo+Pj4gd2lsbCBoYXZlIHRvIHN1cHBv
cnQgZm9yIHRoZSBuZXh0IDIwKyB5ZWFycyBhbmQgeWV0IG5vdCBhY3R1YWxseSBiZQo+Pj4gdXNl
ZnVsIDopCj4+Pgo+Pj4+IERvIHlvdSB0aGluayB0aGlzIGlzIG1lYW5pbmdmdWwgb3IgY2Fubm90
IGNvLWV4aXN0IHdpdGggb3RoZXIgZnV0dXJlCj4+Pj4gc3lzZnMgYmFzZWQgQVBJLgo+Pj4gV2hh
dCBzeXNmcy1iYXNlZCBBUEk/Cj4+IFBsZWFzZSByZWZlciB0byBtYWlsIHRocmVhZCBvbiB2MSBw
YXRjaCBzZXQgLSBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9rPTE2ZTNhY2NjLTRi
MmY2NTQ4LTE2ZTIyNzgzLTBjYzQ3YWE4ZjViYS05MzVmZTgyOGFjMmY2NjU2JnU9aHR0cHM6Ly9s
a21sLm9yZy9sa21sL2ZhbmN5LzIwMjAvMy8xMC8yMTAyCj4+IGVzcGVjaWFsbHkgZGlzY3Vzc2lv
biB3aXRoIExlb24gUm9tYW5vdnNreSBvbiBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3Vy
bD9rPTc0MjA4ZWQ5LTI5ZWM0NzVkLTc0MjEwNTk2LTBjYzQ3YWE4ZjViYS0wYmQ0ZWY0ODkzMWZl
Yzk1JnU9aHR0cHM6Ly9sa21sLm9yZy9sa21sL2ZhbmN5LzIwMjAvMy8xNi8xNDAKPiBJIHJlYWxs
eSBkbyBub3QgdW5kZXJzdGFuZCB3aGF0IHlvdSBhcmUgcmVmZXJyaW5nIHRvIGhlcmUsIHNvcnJ5
LiAgIEkgZG8KPiBub3Qgc2VlIGFueSBzeXNmcy1iYXNlZCBjb2RlIGluIHRoYXQgdGhyZWFkLgpT
b3JyeS4gSSBhbHNvIGRpZCBub3Qgc2VlIGFjdHVhbCBjb2RlLgpIZWxsbyBMZW9uIFJvbWFub3Zz
a3ksIGNvdWxkIHlvdSBlbGFib3JhdGUgeW91ciBwbGFuIHJlZ2FyZGluZyBzeXNmcyBzdHVmZj8K
Pgo+IEFuZCB0cnkgdG8gdXNlIGxvcmUua2VybmVsLm9yZywgbGttbC5vcmcgZG9lc24ndCBhbHdh
eXMgd29yayBhbmQgd2UgaGF2ZQo+IG5vIGNvbnRyb2wgb3ZlciB0aGF0IDooCj4KPj4+IEkgc3Rp
bGwgZG9uJ3Qga25vdyBfd2h5XyB5b3Ugd2FudCB0aGlzLiAgVGhlIElPTiBzdHVmZiBpcyBub3Qg
bmVlZGVkIGFzCj4+PiB0aGF0IGNvZGUgaXMgYWJvdXQgdG8gYmUgZGVsZXRlZCwgc28gd2hvIGVs
c2Ugd2FudHMgdGhpcz8gIFdoYXQgaXMgdGhlCj4+PiB1c2UtY2FzZSBmb3IgaXQgdGhhdCBpcyBz
byBkZXNwZXJhdGVseSBuZWVkZWQgdGhhdCBwYXJzaW5nCj4+PiB5ZXQtYW5vdGhlci1wcm9jIGZp
bGUgaXMgZ29pbmcgdG8gc29sdmUgdGhlIHByb2JsZW0/Cj4+IEluIG15IEFuZHJvaWQgZGV2aWNl
LCB0aGVyZSBhcmUgZ3JhcGhpYyBkcml2ZXIgbWVtb3J5LCB6c21hbGxvYyBtZW1vcnkgZXhjZXB0
IElPTi4KPiBPaywgc28gd2hhdCBkb2VzIEFuZHJvaWQgaGF2ZSB0byBkbyB3aXRoIHRoaXM/ClNv
bWUgZHJpdmVyIGluIEFuZHJvaWQgcGxhdGZvcm0gbWF5IHVzZSBteSBBUEkgdG8gc2hvdyBpdHMg
bWVtb3J5IHVzYWdlLgo+Cj4+IEkgZG9uJ3Qga25vdyBvdGhlciBjYXNlcyBpbiBvdGhlciBwbGF0
Zm9ybS4KPj4gTm90IGRlc3BlcmF0ZWx5IG5lZWRlZCBidXQgSSB0aGluayB3ZSBuZWVkIG9uZSB1
c2Vyc3BhY2Uga25vYiB0byBzZWUgb3ZlcmFsbCBoaWRkZW4gaHVnZSBtZW1vcnkuCj4gV2h5PyAg
V2hvIHdhbnRzIHRoYXQ/ICBXaGF0IHdvdWxkIHVzZXJzcGFjZSBkbyB3aXRoIHRoYXQ/ICBBbmQg
d2hhdAo+IGV4YWN0bHkgZG8geW91IHdhbnQgdG8gc2hvdz8KPgo+IElzIHRoaXMganVzdCBhIGRl
YnVnZ2luZyB0aGluZz8gIFRoZW4gdXNlIGRlYnVnZnMgZm9yIHRoYXQsIG5vdCBwcm9jLgo+IElz
bid0IHRoYXQgd2hhdCB0aGUgRFJNIGRldmVsb3BlcnMgYXJlIHN0YXJ0aW5nIHRvIGRvPwo+Cj4+
IEFkZGl0aW9uYWxseSBJJ2QgbGlrZSB0byBzZWUgYWxsIHRob3NlIGhpZGRlbiBtZW1vcnkgaW4g
T3V0T2ZNZW1vcnkgbG9nLgo+IEhvdyBpcyBhbnl0aGluZyBoaWRkZW4sIGNhbid0IHlvdSBzZWUg
aXQgaW4gdGhlIHNsYWIgaW5mb3JtYXRpb24/Cj4KTGV0IG1lIGV4cGxhaW4gbW9yZS4KCjAuIHNs
YWIKQXMgSSBzYWlkIGluIGNvdmVyIHBhZ2UsIHRoaXMgaXMgbm90IGZvciBtZW1vcnkgYWxsb2Nh
dGVkIGJ5IHNsYWIuCkknZCBsaWtlIHRvIGtub3cgd2hlcmUgaHVnZSBtZW1vcnkgaGFzIGdvbmUu
ClRob3NlIGFyZSBkaXJlY3RseSBhbGxvY2F0ZWQgYnkgYWxsb2NfcGFnZXMgaW5zdGVhZCBvZiBz
bGFiLgovcHJvYy9zbGFiaW5mbyBkb2VzIG5vdCBzaG93IHRoaXMgaW5mb3JtYXRpb24uCgoxLiAv
cHJvYy9tZW1pbmZvX2V4dHJhCi9wcm9jL21lbWluZm9fZXh0cmEgY291bGQgYmUgZGVidWdnaW5n
IHRoaW5nIHRvIHNlZSBtZW1vcnkgc3RhdHVzIGF0IGEgY2VydGFpbiB0aW1lLgpCdXQgaXQsIEkg
dGhpbmssIGlzIGFsc28gYmFzaWMgaW5mb3JtYXRpb24gcmF0aGVyIHRoYW4ganVzdCBmb3IgZGVi
dWdnaW5nLgpJdCBpcyBzaW1pbGFyIHdpdGggL3Byb2MvbWVtaW5mbyB3aGljaCBpcyBpbiBwcm9j
ZnMgaW5zdGVhZCBvZiBkZWJ1Z2ZzLgoKMi4gb29tIGxvZwpvb20gbG9nIGluIHNob3dfbWVtIGlz
IG1vcmUgdGhhbiBqdXN0IGRlYnVnZ2luZy4KQXMgZXhpc3Rpbmcgb29tIGxvZyBzaG93cyBtdWNo
IG1lbW9yeSBpbmZvcm1hdGlvbiwgSSB0aGluayB3ZSBuZWVkIHRoZSBoaWRkZW4gbWVtb3J5IGlu
Zm8uCldpdGhvdXQgdGhlc2UgaW5mb3JtYXRpb24sIHdlIGRvIE5PVCBrbm93IG9vbSByZWFzb24g
YmVjYXVzZSBvdGhlciB0cmFkaXRpb25hbCBzdGF0cyBhcmUgbm90IGVub3VnaC4KPj4gVGhpcyBp
cyB1c2VmdWwgdG8gZ2V0IGNsdWUgdG8gZmluZCBtZW1vcnkgaG9nZ2VyLgo+PiBpLmUuKSBzaG93
X21lbSBvbiBvb20KPj4gPDY+WyAgNDIwLjg1NjQyOF0gIE1lbS1JbmZvOgo+PiA8Nj5bICA0MjAu
ODU2NDMzXSAgSW9uU3lzdGVtSGVhcDozMjgxM2tCIFpzUGFnZXM6NDQxMTRrQiBHcmFwaGljRHJp
dmVyOjoxMzA5MWtCCj4+IDw2PlsgIDQyMC44NTY0NTBdICBhY3RpdmVfYW5vbjo5NTcyMDUgaW5h
Y3RpdmVfYW5vbjoxNTkzODMgaXNvbGF0ZWRfYW5vbjowCj4gU28gd2hhdCBkb2VzIHRoaXMgc2hv
dyB5b3U/ICBUaGF0IHNvbWVvbmUgaXMgdGFraWduIGEgdG9uIG9mIElPTiBtZW1vcnkKPiBmb3Ig
c29tZSB1bmtub3duIHVzZT8gIFdoYXQgY2FuIHlvdSBkbyB3aXRoIHRoYXQ/ICBXaGF0IHdvdWxk
IHlvdSBkbwo+IHdpdGggdGhhdD8KV2UgbWF5IG5vdCBrbm93IGV4YWN0IG1lbW9yeSBvd25lci4g
QnV0IHdlIGNhbiBuYXJyb3cgZG93bi4KQW55d2F5IEkgdGhpbmsgdGhpcyBpcyBtZWFuaW5nZnVs
IGluc3RlYWQgb2Ygbm8gY2x1ZS4KPgo+IEFuZCBtZW1vcnkgaXMgYWxtb3N0IG5ldmVyIGFzc2ln
bmVkIHRvIGEgImRyaXZlciIsIGl0IGlzIGFzc2lnbmVkIHRvIGEKPiAiZGV2aWNlIiB0aGF0IHVz
ZXMgaXQuICBEcml2ZXJzIGNhbiBoYW5kbGUgbXVsdGlwbGUgZGV2aWNlcyBhdCB0aGUgc2FtZQo+
IHRpbWUsIHNvIHdoeSB3b3VsZCB5b3UgYnJlYWsgdGhpcyBkb3duIGJ5IGRyaXZlcnM/ICBBcmUg
eW91IGFzc3VtaW5nCj4gdGhhdCBhIGRyaXZlciBvbmx5IHRhbGtzIHRvIG9uZSBwaWVjZSBvZiBo
YXJkd2FyZT8KWWVzIGEgZHJpdmVyIG1heSBzdXBwb3J0IHNldmVyYWwgZGV2aWNlcy4gSSBkb24n
dCBrbm93IGlmIGl0IHNhbWUgb24gYW4gZW1iZWRkZWQgZGV2aWNlLgpBbnl3YXkgSSB0aGluayB0
aGUgaWRlYSB3b3JrcyBldmVuIGZvciBzZXZlcmFsIGRldmljZXMsIGFsdGhvdWdoIHRoZSBkcml2
ZXIgc2hvdWxkCmRpc3Rpbmd1aXNoIG1lbW9yeSB1c2FnZSBmb3IgZWFjaCBkZXZpY2UgYW5kIHNo
b3VsZCByZWdpc3RlciBlYWNoIG1lbW9yeSBzdGF0Lgo+Cj4gSSB0aGluayB5b3UgbmVlZCBhIG11
Y2ggYmV0dGVyIHVzZSBjYXNlIGZvciBhbGwgb2YgdGhpcyBvdGhlciB0aGFuCj4gIndvdWxkbid0
IGl0IGJlIG5pY2UgdG8gc2VlIHNvbWUgbnVtYmVycyIsIGFzIHRoYXQgaXNuJ3QgZ29pbmcgdG8g
aGVscAo+IGFueW9uZSBvdXQgaW4gdGhlIGVuZC4KU29ycnkuIEFzIG9mIG5vdywgSSBkbyBub3Qg
a25vdyBvdGhlciBiZXR0ZXIgdXNlIGNhc2UsIGJ1dCBJIHN0aWxsIHRoaW5rCm1lbW9yeSBpbmZv
cm1hdGlvbiBzaG91bGQgY292ZXIgbW9zdCBvZiBtZW1vcnkgdXNhZ2UuCkh1Z2UgbWVtb3J5IGNv
bnN1bWVkIGJ5IGRyaXZlciBvciBvdGhlciBjb3JlIGxvZ2ljIHNob3VsZCBiZSBzaG93biBpbiBP
b00uCj4KPiB0aGFua3MsCj4KPiBncmVnIGstaAo+Cj4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2tleGVjCg==
