Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F73190C99
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 12:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mu89h5DlIsEuwLZdrQimn2mgsH7I32mcvItssFevHf4=; b=Zxl1Vd9G7dFCzQ
	M6e4vDko4IdaTCLH1kdkjpADrz9UOWA++xCx7igpIrXbGTYOZgz4cS9R6QoXOMViJM/rqfFso52/5
	FfCMhyhjDzq2l2sRMYaMMbHKPfL5DrbVb6bSRCWHp5GDjbl3SXD5kT03VtxLP6Cqdexdp86s2Rkb/
	KnBSGT9v/7k3Q8tHWQqGXr03OKvclSmYJUzq7zmIAYV+I/cS/6Aq1GNcIuIn+2On0KAwF6CHfZ+To
	ArTJ0NRUIZHmI4B+wD5LWP94TowSwk4DTc0uFKYZPvBRrgeGrJRKZOA4qsYfDHwAdash+nqV0Z2st
	Mjfunl1woGMLwSGHIHyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhsq-0000DF-HR; Tue, 24 Mar 2020 11:38:12 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhsn-0000Cg-0w
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 11:38:11 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200324113744epoutp036ad04a8097e3415ad0e2dced071d17a1~-OnQ0RYBF0457704577epoutp03k
 for <kexec@lists.infradead.org>; Tue, 24 Mar 2020 11:37:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200324113744epoutp036ad04a8097e3415ad0e2dced071d17a1~-OnQ0RYBF0457704577epoutp03k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585049864;
 bh=JgArrA3uQGXN7tH4LXkGzWxmGt7NEFtzC40fxAIIJQg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=DSkBFf6jpZ3QmdTeckXSTxP3icJbuh9wu9nZP6gIXLHdpQ5jlDu5hrhE5/1oy/03j
 y+ZTqzoX2LYy0egQFrIwqFMQXDy9FRcyJX9kOmXR9m5GtiR5/df7cL7NC0WxjwIYD1
 eHhXr4XyN4LW10ALPXpcFfuXzqycCh+P0mmfi4RY=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200324113743epcas1p116ddec95a2720d6e171137d6bb9bec7d~-OnP0Noov1286112861epcas1p18;
 Tue, 24 Mar 2020 11:37:43 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.163]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 48mq452dFJzMqYkV; Tue, 24 Mar
 2020 11:37:41 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 36.77.04074.501F97E5; Tue, 24 Mar 2020 20:37:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200324113740epcas1p105dbc87fedfa534c2d6b6a8ad515fda0~-OnNQvG9S1286112861epcas1p15;
 Tue, 24 Mar 2020 11:37:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200324113740epsmtrp2625c4b6be22228e08fbc7d5e855cf9f0~-OnNP0IS40928509285epsmtrp27;
 Tue, 24 Mar 2020 11:37:40 +0000 (GMT)
X-AuditID: b6c32a39-58bff70000000fea-cc-5e79f1056a6d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 15.30.04024.401F97E5; Tue, 24 Mar 2020 20:37:40 +0900 (KST)
Received: from [10.253.104.82] (unknown [10.253.104.82]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200324113739epsmtip24099d55508e3906a0166054ae6c581a8~-OnL6Llao0410204102epsmtip29;
 Tue, 24 Mar 2020 11:37:39 +0000 (GMT)
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
To: Greg KH <gregkh@linuxfoundation.org>
From: Jaewon Kim <jaewon31.kim@samsung.com>
Message-ID: <5E79F102.9080405@samsung.com>
Date: Tue, 24 Mar 2020 20:37:38 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <20200324101110.GA2218981@kroah.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmvi7rx8o4gzcd/BbTG70s5qxfw2Zx
 /sEvNovmxevZLLo3z2S0WP7uNKPF7tNfmSxW7vnBZDHl11Jmi83fO9gsLu+aw2Zxb81/Votl
 X9+zW2xomcVu8WjCJCaLU3c/s1vMbuxjdBD02DnrLrvHplWdbB6bPk1i97hzbQ+bx4kZv1k8
 9s9dw+6xeUm9x/t9V9k8ziw4wu6x89NmVo/Pm+QCuKNybDJSE1NSixRS85LzUzLz0m2VvIPj
 neNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOAnlJSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX
 2CqlFqTkFBgaFOgVJ+YWl+al6yXn51oZGhgYmQJVJuRkvOwTLLgvVXHmx0SWBsYTol2MHBwS
 AiYST47IdjFycQgJ7GCU2HJpFyuE84lRou/heRYI5xujxJPvH5i7GDnBOhqX32AFsYUE9jJK
 3HtqA1H0llHi0Lmj7CAJYQE3iX9bz7OB2CICGhIvj94Cm8Qs8J1J4vjiL0wgCTYBbYn3CyaB
 TeIV0JJYveI62AYWAVWJvW9vgNmiAhESO+Z+ZISoEZQ4OfMJC4jNKWAo8XPDH7BlzALyEs1b
 ZzODLJAQOMUu8W7pfiaIU10kOiafg7KFJV4d38IOYUtJfH63lw2ioZlR4u3MzYwQTgujxN1N
 vYwQVcYSvT0XmEHBxCygKbF+lz5EWFFi5++5jBCb+STefe1hhYQkr0RHmxBEiZpEy7OvrBC2
 jMTff8+gSjwkzv9Tg4TWemBArN7AOoFRYRaS32Yh+WcWwuIFjMyrGMVSC4pz01OLDQtMkWN4
 EyM4lWtZ7mA8ds7nEKMAB6MSD2/D48o4IdbEsuLK3EOMEhzMSiK8m1Mr4oR4UxIrq1KL8uOL
 SnNSiw8xmgKDeyKzlGhyPjDP5JXEG5oaGRsbW5iYmZuZGiuJ8069nhMnJJCeWJKanZpakFoE
 08fEwSnVwHiw7V369uefJjBsWLQs99nHmwv+yZryrXWwOVJgMf/t+n88KocN9ZvL1xy/8aAg
 X+6b7uY47r9Wtget/CN/31jwl/2ljuBLhre/+1SlvJtC1k6y8d35zE3kLmv9TfEppv1qfV2l
 0+5X6gbeZX5idiKoPHzaqy7uV+eOH+zcscf8kvqPI966D8KUWIozEg21mIuKEwFBKliZ+wMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsWy7bCSvC7Lx8o4g6592hbTG70s5qxfw2Zx
 /sEvNovmxevZLLo3z2S0WP7uNKPF7tNfmSxW7vnBZDHl11Jmi83fO9gsLu+aw2Zxb81/Votl
 X9+zW2xomcVu8WjCJCaLU3c/s1vMbuxjdBD02DnrLrvHplWdbB6bPk1i97hzbQ+bx4kZv1k8
 9s9dw+6xeUm9x/t9V9k8ziw4wu6x89NmVo/Pm+QCuKO4bFJSczLLUov07RK4Ml72CRbcl6o4
 82MiSwPjCdEuRk4OCQETicblN1i7GLk4hAR2M0rc2bydBSIhI/Hm/FMgmwPIFpY4fLgYouY1
 o8SW7g4mkBphATeJf1vPs4HYIgIaEi+P3mKBKFrPJLGz9x2YwyzwnUniUt8hsCo2AW2J9wsm
 sYLYvAJaEqtXXGcGsVkEVCX2vr0BZosKREisXneNGaJGUOLkzCdgF3EKGEr83PCHHcRmFlCX
 +DPvEjOELS/RvHU28wRGwVlIWmYhKZuFpGwBI/MqRsnUguLc9NxiwwLDvNRyveLE3OLSvHS9
 5PzcTYzgGNXS3MF4eUn8IUYBDkYlHl6th5VxQqyJZcWVuYcYJTiYlUR4N6dWxAnxpiRWVqUW
 5ccXleakFh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXAOP1pjNGxW8UvvmlMeskt
 2P1n8busvvVP3t1XTDNo6InM/GWTbb/QyiL0g+PtW7m6rRzs+/wDJ9jt3lLAutoj8q/bweik
 xWVruta2Ht/+9Ycc766dM4873Zn685nwviNB/zgXRDasX2klti7Cae+snXzrDhfeOW5zVWC6
 xJVN9h/Loib2GIV2limxFGckGmoxFxUnAgC9Jb9gzQIAAA==
X-CMS-MailID: 20200324113740epcas1p105dbc87fedfa534c2d6b6a8ad515fda0
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
 <20200324101110.GA2218981@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_043809_610513_E190DE94 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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

CgpPbiAyMDIw64WEIDAz7JuUIDI07J28IDE5OjExLCBHcmVnIEtIIHdyb3RlOgo+IE9uIFR1ZSwg
TWFyIDI0LCAyMDIwIGF0IDA2OjExOjE3UE0gKzA5MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4+IE9u
IDIwMjDrhYQgMDPsm5QgMjPsnbwgMTg6NTMsIEdyZWcgS0ggd3JvdGU6Cj4+Pj4gK2ludCByZWdp
c3Rlcl9tZW1pbmZvX2V4dHJhKGF0b21pY19sb25nX3QgKnZhbCwgaW50IHNoaWZ0LCBjb25zdCBj
aGFyICpuYW1lKQo+Pj4+ICt7Cj4+Pj4gKwlzdHJ1Y3QgbWVtaW5mb19leHRyYSAqbWVtaW5mbywg
Km1lbXRlbXA7Cj4+Pj4gKwlpbnQgbGVuOwo+Pj4+ICsJaW50IGVycm9yID0gMDsKPj4+PiArCj4+
Pj4gKwltZW1pbmZvID0ga3phbGxvYyhzaXplb2YoKm1lbWluZm8pLCBHRlBfS0VSTkVMKTsKPj4+
PiArCWlmICghbWVtaW5mbykgewo+Pj4+ICsJCWVycm9yID0gLUVOT01FTTsKPj4+PiArCQlnb3Rv
IG91dDsKPj4+PiArCX0KPj4+PiArCj4+Pj4gKwltZW1pbmZvLT52YWwgPSB2YWw7Cj4+Pj4gKwlt
ZW1pbmZvLT5zaGlmdF9mb3JfcGFnZSA9IHNoaWZ0Owo+Pj4+ICsJc3RybmNweShtZW1pbmZvLT5u
YW1lLCBuYW1lLCBOQU1FX1NJWkUpOwo+Pj4+ICsJbGVuID0gc3RybGVuKG1lbWluZm8tPm5hbWUp
Owo+Pj4+ICsJbWVtaW5mby0+bmFtZVtsZW5dID0gJzonOwo+Pj4+ICsJc3RybmNweShtZW1pbmZv
LT5uYW1lX3BhZCwgbWVtaW5mby0+bmFtZSwgTkFNRV9CVUZfU0laRSk7Cj4+Pj4gKwl3aGlsZSAo
KytsZW4gPCBOQU1FX0JVRl9TSVpFIC0gMSkKPj4+PiArCQltZW1pbmZvLT5uYW1lX3BhZFtsZW5d
ID0gJyAnOwo+Pj4+ICsKPj4+PiArCXNwaW5fbG9jaygmbWVtaW5mb19sb2NrKTsKPj4+PiArCWxp
c3RfZm9yX2VhY2hfZW50cnlfcmN1KG1lbXRlbXAsICZtZW1pbmZvX2hlYWQsIGxpc3QpIHsKPj4+
PiArCQlpZiAobWVtdGVtcC0+dmFsID09IHZhbCkgewo+Pj4+ICsJCQllcnJvciA9IC1FSU5WQUw7
Cj4+Pj4gKwkJCWJyZWFrOwo+Pj4+ICsJCX0KPj4+PiArCX0KPj4+PiArCWlmICghZXJyb3IpCj4+
Pj4gKwkJbGlzdF9hZGRfdGFpbF9yY3UoJm1lbWluZm8tPmxpc3QsICZtZW1pbmZvX2hlYWQpOwo+
Pj4+ICsJc3Bpbl91bmxvY2soJm1lbWluZm9fbG9jayk7Cj4+PiBJZiB5b3UgaGF2ZSBhIGxvY2ss
IHdoeSBhcmUgeW91IG5lZWRpbmcgcmN1Pwo+PiBJIHRoaW5rIF9yY3Ugc2hvdWxkIGJlIHJlbW92
ZWQgb3V0IG9mIGxpc3RfZm9yX2VhY2hfZW50cnlfcmN1Lgo+PiBCdXQgSSdtIGNvbmZ1c2VkIGFi
b3V0IHdoYXQgeW91IG1lYW50Lgo+PiBJIHVzZWQgcmN1X3JlYWRfbG9jayBvbiBfX21lbWluZm9f
ZXh0cmEsCj4+IGFuZCBJIHRoaW5rIHNwaW5fbG9jayBpcyBhbHNvIG5lZWRlZCBmb3IgYWRkaXRp
b24gYW5kIGRlbGV0aW9uIHRvIGhhbmRsZSBtdWx0aXBsZSBtb2RpZmllcnMuCj4gSWYgdGhhdCdz
IHRoZSBjYXNlLCB0aGVuIHRoYXQncyBmaW5lLCBpdCBqdXN0IGRpZG4ndCBzZWVtIGxpa2UgdGhh
dCB3YXMKPiBuZWVkZWQuICBPciBJIG1pZ2h0IGhhdmUgYmVlbiByZWFkaW5nIHlvdXIgcmN1IGxv
Z2ljIGluY29ycmVjdGx5Li4uCj4KPj4+PiArCWlmIChlcnJvcikKPj4+PiArCQlrZnJlZShtZW1p
bmZvKTsKPj4+PiArb3V0Ogo+Pj4+ICsKPj4+PiArCXJldHVybiBlcnJvcjsKPj4+PiArfQo+Pj4+
ICtFWFBPUlRfU1lNQk9MKHJlZ2lzdGVyX21lbWluZm9fZXh0cmEpOwo+Pj4gRVhQT1JUX1NZTUJP
TF9HUEwoKT8gIEkgaGF2ZSB0byBhc2sgOikKPj4gSSBjYW4gdXNlIEVYUE9SVF9TWU1CT0xfR1BM
Lgo+Pj4gdGhhbmtzLAo+Pj4KPj4+IGdyZWcgay1oCj4+Pgo+Pj4KPj4gSGVsbG8KPj4gVGhhbmsg
eW91IGZvciB5b3VyIGNvbW1lbnQuCj4+Cj4+IEJ5IHRoZSB3YXkgdGhlcmUgd2FzIG5vdCByZXNv
bHZlZCBkaXNjdXNzaW9uIG9uIHYxIHBhdGNoIGFzIEkgbWVudGlvbmVkIG9uIGNvdmVyIHBhZ2Uu
Cj4+IEknZCBsaWtlIHRvIGhlYXIgeW91ciBvcGluaW9uIG9uIHRoaXMgL3Byb2MvbWVtaW5mb19l
eHRyYSBub2RlLgo+IEkgdGhpbmsgaXQgaXMgdGhlIHByb3BhZ2F0aW9uIG9mIGFuIG9sZCBhbmQg
b2Jzb2xldGUgaW50ZXJmYWNlIHRoYXQgeW91Cj4gd2lsbCBoYXZlIHRvIHN1cHBvcnQgZm9yIHRo
ZSBuZXh0IDIwKyB5ZWFycyBhbmQgeWV0IG5vdCBhY3R1YWxseSBiZQo+IHVzZWZ1bCA6KQo+Cj4+
IERvIHlvdSB0aGluayB0aGlzIGlzIG1lYW5pbmdmdWwgb3IgY2Fubm90IGNvLWV4aXN0IHdpdGgg
b3RoZXIgZnV0dXJlCj4+IHN5c2ZzIGJhc2VkIEFQSS4KPiBXaGF0IHN5c2ZzLWJhc2VkIEFQST8K
UGxlYXNlIHJlZmVyIHRvIG1haWwgdGhyZWFkIG9uIHYxIHBhdGNoIHNldCAtIGh0dHBzOi8vbGtt
bC5vcmcvbGttbC9mYW5jeS8yMDIwLzMvMTAvMjEwMgplc3BlY2lhbGx5IGRpc2N1c3Npb24gd2l0
aCBMZW9uIFJvbWFub3Zza3kgb24gaHR0cHM6Ly9sa21sLm9yZy9sa21sL2ZhbmN5LzIwMjAvMy8x
Ni8xNDAKCj4KPiBJIHN0aWxsIGRvbid0IGtub3cgX3doeV8geW91IHdhbnQgdGhpcy4gIFRoZSBJ
T04gc3R1ZmYgaXMgbm90IG5lZWRlZCBhcwo+IHRoYXQgY29kZSBpcyBhYm91dCB0byBiZSBkZWxl
dGVkLCBzbyB3aG8gZWxzZSB3YW50cyB0aGlzPyAgV2hhdCBpcyB0aGUKPiB1c2UtY2FzZSBmb3Ig
aXQgdGhhdCBpcyBzbyBkZXNwZXJhdGVseSBuZWVkZWQgdGhhdCBwYXJzaW5nCj4geWV0LWFub3Ro
ZXItcHJvYyBmaWxlIGlzIGdvaW5nIHRvIHNvbHZlIHRoZSBwcm9ibGVtPwpJbiBteSBBbmRyb2lk
IGRldmljZSwgdGhlcmUgYXJlIGdyYXBoaWMgZHJpdmVyIG1lbW9yeSwgenNtYWxsb2MgbWVtb3J5
IGV4Y2VwdCBJT04uCkkgZG9uJ3Qga25vdyBvdGhlciBjYXNlcyBpbiBvdGhlciBwbGF0Zm9ybS4K
Tm90IGRlc3BlcmF0ZWx5IG5lZWRlZCBidXQgSSB0aGluayB3ZSBuZWVkIG9uZSB1c2Vyc3BhY2Ug
a25vYiB0byBzZWUgb3ZlcmFsbCBoaWRkZW4gaHVnZSBtZW1vcnkuCgpBZGRpdGlvbmFsbHkgSSdk
IGxpa2UgdG8gc2VlIGFsbCB0aG9zZSBoaWRkZW4gbWVtb3J5IGluIE91dE9mTWVtb3J5IGxvZy4K
VGhpcyBpcyB1c2VmdWwgdG8gZ2V0IGNsdWUgdG8gZmluZCBtZW1vcnkgaG9nZ2VyLgppLmUuKSBz
aG93X21lbSBvbiBvb20KPDY+WyAgNDIwLjg1NjQyOF0gIE1lbS1JbmZvOgo8Nj5bICA0MjAuODU2
NDMzXSAgSW9uU3lzdGVtSGVhcDozMjgxM2tCIFpzUGFnZXM6NDQxMTRrQiBHcmFwaGljRHJpdmVy
OjoxMzA5MWtCCjw2PlsgIDQyMC44NTY0NTBdICBhY3RpdmVfYW5vbjo5NTcyMDUgaW5hY3RpdmVf
YW5vbjoxNTkzODMgaXNvbGF0ZWRfYW5vbjowCgpUaGFuayB5b3UKSmFld29uIEtpbQo+Cj4gdGhh
bmtzLAo+Cj4gZ3JlZyBrLWgKPgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
