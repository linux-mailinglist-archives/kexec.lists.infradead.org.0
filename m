Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE514A894
	for <lists+kexec@lfdr.de>; Mon, 27 Jan 2020 18:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIzvt94UOB0Jq7R7XSwnpaADGUlF4jdtaNKIwGnNNoU=; b=TyccDlztoZ55Wz
	a3VXA8hIF6Wm+XDnZI/0blK5Jn7eZa2WhwP/5H2neO0eiiFZm8shbRfVa6Zh0To9ZWpw76d33YQ+k
	pAS/PNpWRprcyUhMW/xSCnH/yLh9wCETi+kfNTa5/MOCsvQWE8mDI6ybQUmXDentfJMkChoaKrozO
	CAfEPbHE72gIsdyaGAmmgG/77wcEOGI4xwo8S5dKNPf8xRUnlKlqA3Jn6oKDOiuhLxQzZUtzDYaS6
	51KRxHQlF3C1v67mI55wNE0XPrkV64g6eDFxEgjrcHurZkGDgPazzjj6PMguuovb8a7Na77VAYoQr
	y+GQqOceWeib/1o/5agA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw7p7-0005QJ-UU; Mon, 27 Jan 2020 17:05:17 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw7ou-00049p-Dr
 for kexec@lists.infradead.org; Mon, 27 Jan 2020 17:05:15 +0000
Received: from [177.68.10.170] (helo=calabresa)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1iw7oj-0005OM-JC; Mon, 27 Jan 2020 17:04:54 +0000
Date: Mon, 27 Jan 2020 14:04:47 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200127170447.GA4080@calabresa>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_090504_722780_6DB712B1 
X-CRM114-Status: GOOD (  32.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: piliu <piliu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDU6MDc6NTBQTSArMDAwMCwgSEFHSU8gS0FaVUhJVE8o
6JCp5bC+IOS4gOS7gSkgd3JvdGU6Cj4gSGkgUGluZ2ZhbiwKPiAKPiBTb3JyeSwgSSBoYWQgYmVl
biBidXN5LCB0aGVuIHdhcyBsb29raW5nIGludG8gaXRzIGhpc3RvcnkgYSBiaXQuCj4gCj4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gT24gMDEvMjAvMjAyMCAwNDo1OSBQTSwgQmFv
cXVhbiBIZSB3cm90ZToKPiA+ID4gT24gMDEvMjAvMjAgYXQgMDk6MzNhbSwgRGF2aWQgSGlsZGVu
YnJhbmQgd3JvdGU6Cj4gPiA+Pgo+ID4gPj4KPiA+ID4+PiBBbSAyMC4wMS4yMDIwIHVtIDAzOjI1
IHNjaHJpZWIgUGluZ2ZhbiBMaXUgPHBpbGl1QHJlZGhhdC5jb20+Ogo+ID4gPj4+Cj4gPiA+Pj4g
77u/QWZ0ZXIga2VybmVsIGNvbW1pdCBiYTcyYjRjOGNmNjAgKCJtbS9zcGFyc2VtZW06IHN1cHBv
cnQgc3ViLXNlY3Rpb24KPiA+ID4+PiBob3RwbHVnIiksIHdoZW4gaG90LXJlbW92ZWQsIHNlY3Rp
b25fbWVtX21hcCBpcyBzdGlsbCBlbmNvZGVkIHdpdGggc2VjdGlvbgo+ID4gPj4+IHN0YXJ0IHBm
biwgbm90IE5VTEwuIFRoaXMgYnJlYWsgdGhlIGN1cnJlbnQgbWFrZWR1bXBmaWxlLgo+IAo+IENv
dWxkIHlvdSBhZGQga2VybmVsIHZlcnNpb24gd2hpY2ggdGhpcyBzdGFydGVkIGFuZCBlcnJvciBt
ZXNzYWdlLAo+IGlmIHBvc3NpYmxlLCBmb3Igc29tZW9uZSBoaXR0aW5nIHRoaXMgaXNzdWUgdG8g
ZmluZCB0aGUgcGF0Y2guCj4gCj4gPiA+Pj4KPiA+ID4+PiBXaGF0ZXZlciBzZWN0aW9uX21lbV9t
YXAgY29kaW5nIGluZm8gYWZ0ZXIgaG90LXJlbW92ZWQsIGl0IGlzIHJlbGlhYmxlCj4gPiA+Pj4g
anVzdCB0byB3b3JrIG9uIFNFQ1RJT05fTUFSS0VEX1BSRVNFTlQgYml0LiBGaXhpbmcgbWFrZWR1
bXBmaWxlIGJ5IHRoaXMKPiA+ID4+PiB3YXkuCj4gPiA+Pj4KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBQaW5nZmFuIExpdSA8cGlsaXVAcmVkaGF0LmNvbT4KPiA+ID4+PiBUbzoga2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+ID4gPj4+IENjOiBLYXp1aGl0byBIYWdpbyA8ay1oYWdpb0BhYi5qcC5u
ZWMuY29tPgo+ID4gPj4+IENjOiBCYW9xdWFuIEhlIDxiaGVAcmVkaGF0LmNvbT4KPiA+ID4+PiBD
YzogRGF2aWQgSGlsZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+Cj4gPiA+Pj4gQ2M6IEFuZHJl
dyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+Cj4gPiA+Pj4gQ2M6IERhbiBXaWxs
aWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+ID4gPj4+IENjOiBPc2NhciBTYWx2YWRv
ciA8b3NhbHZhZG9yQHN1c2UuZGU+Cj4gPiA+Pj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQGtl
cm5lbC5vcmc+Cj4gPiA+Pj4gQ2M6IFFpYW4gQ2FpIDxjYWlAbGNhLnB3Pgo+ID4gPj4+IC0tLQo+
ID4gPj4+IG1ha2VkdW1wZmlsZS5jIHwgNiArLS0tLS0KPiA+ID4+PiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCj4gPiA+Pj4KPiA+ID4+PiBkaWZmIC0tZ2l0
IGEvbWFrZWR1bXBmaWxlLmMgYi9tYWtlZHVtcGZpbGUuYwo+ID4gPj4+IGluZGV4IGUyOTBmYmQu
LmFiNDBhNTggMTAwNjQ0Cj4gPiA+Pj4gLS0tIGEvbWFrZWR1bXBmaWxlLmMKPiA+ID4+PiArKysg
Yi9tYWtlZHVtcGZpbGUuYwo+ID4gPj4+IEBAIC0zNDA2LDggKzM0MDYsNiBAQCBzZWN0aW9uX21l
bV9tYXBfYWRkcih1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgKm1hcF9tYXNrKQo+
ID4gPj4+ICAgIG1hcCA9IFVMT05HKG1lbV9zZWN0aW9uICsgT0ZGU0VUKG1lbV9zZWN0aW9uLnNl
Y3Rpb25fbWVtX21hcCkpOwo+ID4gPj4+ICAgIG1hc2sgPSBTRUNUSU9OX01BUF9NQVNLOwo+ID4g
Pj4+ICAgICptYXBfbWFzayA9IG1hcCAmIH5tYXNrOwo+ID4gPj4+IC0gICAgaWYgKG1hcCA9PSAw
eDApCj4gPiA+Pj4gLSAgICAgICAgKm1hcF9tYXNrIHw9IFNFQ1RJT05fTUFSS0VEX1BSRVNFTlQ7
Cj4gPiBUaGlzIHNob3VsZCBiZSBhIHRyaWNrIHRvIGxldCBtYXA9PTB4MCBzdXJ2aXZlIHRoZSBs
b2dpYwo+ID4gCQkJaWYgKCEobWFwX21hc2sgJiBTRUNUSU9OX01BUktFRF9QUkVTRU5UKSkgewo+
ID4gCQkJCXJldHVybiBGQUxTRTsKPiA+IAkJCX0KPiA+IGluIHZhbGlkYXRlX21lbV9zZWN0aW9u
KCkuCj4gPiA+Pgo+ID4gPj4gV2h5IHdhcyB0aGF0IGFkZGVkIGluIHRoZSBmaXJzdCBwbGFjZT8g
VGhpcyBsb29rcyBsaWtlIGRvbWUgY29tcGF0IGhhbmRsaW5nIHRvIG1lLiBBcmUgd2Ugc3VyZSB3
ZSBjYW4KPiA+IHJlbW92ZSBpdD8KPiA+IFRoZSBsb2dpYyBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCAx
NDg3NmM0NWFlZiAoIltQQVRDSCBtYWtlZHVtcGZpbGVdIGhhbmRsZQo+ID4gbWVtX3NlY3Rpb24g
YXMgZWl0aGVyIGEgcG9pbnRlciBvciBhbiBhcnJheSIpCj4gPiBDb21iaW5pbmcgc2VjdGlvbl9t
ZW1fbWFwX2FkZHIoKSBhbmQgdGhlIGZvbGxvd2luZyBsb2dpYyBpbgo+ID4gdmFsaWRhdGVfbWVt
X3NlY3Rpb24oKQo+ID4gaWYgKG1lbV9tYXAgPT0gMCkgewo+ID4gCW1lbV9tYXAgPSBOT1RfTUVN
TUFQX0FERFI7Cj4gPiB9Cj4gPiAKPiA+IEkgcmVhY2hlZCB0aGUgc2FtZSBjb25jbHVzaW9uIGFz
IEJhb3F1YW4ncy4KPiA+ID4KPiA+ID4KPiA+ID4gVGhlIG9yaWdpbmFsIGNvZGUgYXNzdW1lcyB0
aGF0IHRoZXJlIGFyZSBvbmx5IHR3byBraW5kcyBvZiBtZW1fc2VjdGlvbiwKPiA+ID4gb25lIGlz
IGVtcHR5IHZhbHVlLCB0aGUgc2Vjb25kIGlzIGEgcHJlc2VudCBvbmUuIFRoaXMgcmVtb3Zpbmcg
YmVoYXZlcwo+ID4gPiB0aGUgc2FtZSBhcyB0aGUgb2xkIGNvZGUsIEkgZG9uJ3Qgc2VlIGEgcHJv
YmxlbSB3aXRoIGl0Lgo+ID4gPgo+ID4gPiBJIHRyaWVkIHRvIHVuZGVyc3RhbmQgdGhlIGNvZGUs
IGJ1dCBJIGRvbid0IGtub3cgd2h5IGl0IG5lZWQgY2FsbAo+ID4gPiB2YWxpZGF0ZV9tZW1fc2Vj
dGlvbigpIHR3aWNlIGFuZCBjb21wYXJlIHRoZSByZXR1cm5lZCB2YWx1ZS4KPiA+IEkgdGhpbmsg
aXQgY291bGQgYmUgaWYvZWxzZSwgbm8gbmVlZCB0byBjYWxsIHR3aWNlLgo+IAo+IEl0IGxvb2tz
IHRvIG1lIHRoYXQgY29tbWl0IDE0ODc2YzQ1YWVmICgiW1BBVENIIG1ha2VkdW1wZmlsZV0gaGFu
ZGxlIG1lbV9zZWN0aW9uCj4gYXMgZWl0aGVyIGEgcG9pbnRlciBvciBhbiBhcnJheSIpIHdhcyBp
bnRlbmRlZCB0byBzdXBwb3J0IGtlcm5lbHMgd2hpY2ggaGFkCj4gICA4M2UzYzQ4NzI5ZDkgKCJt
bS9zcGFyc2VtZW06IEFsbG9jYXRlIG1lbV9zZWN0aW9uIGF0IHJ1bnRpbWUgZm9yIENPTkZJR19T
UEFSU0VNRU1fRVhUUkVNRT15IikKPiBhbmQgZGlkIG5vdCBoYXZlCj4gICBhMGIxMjgwMzY4ZDEg
KCJrZHVtcDogd3JpdGUgY29ycmVjdCBhZGRyZXNzIG9mIG1lbV9zZWN0aW9uIGludG8gdm1jb3Jl
aW5mbyIpLgo+IAo+IEFwcGFyZW50bHkgdGhlcmUgd2VyZSBzb21lIHJlbGVhc2VkIFVidW50dSBr
ZXJuZWxzIGxpa2UgdGhpcy4KPiAKPiBTbywgaWYgd2UgbmVlZCB0aGF0IGxvZ2ljLCB5b3VyIHBh
dGNoIHNlZW1zCj4gLSBzdXBwb3J0IGtlcm5lbHMgd2hpY2ggc2VjdGlvbl9tZW1fbWFwIGlzIG5v
bi1OVUxMIGZvciBob3QtcmVtb3ZlZCBtZW1vcnksCj4gLSBidXQgbWlnaHQgaW5jcmVhc2UgdGhl
IHBvc3NpYmxpdHkgb2YgZmFsc2UtcG9zaXRpdmUuCj4gCj4gSSB0aGluayB0aGlzIGlzIGEgdHJh
ZGVvZmYgYmV0d2VlbiB0aGUgYWJvdmUgdHdvLCBidXQgdGhlIGxhdHRlciB3b3VsZCBiZQo+IHNt
YWxsIGVub3VnaC4gIEFuZCBJJ20gdGVzdGluZyB0aGUgcGF0Y2ggYW5kIE9LIHdpdGggMTAgdm1j
b3JlcyBzbyBmYXIuCj4gCj4gPiBDYyBUaGFkZXUgTGltYSBkZSBTb3V6YSBDYXNjYXJkbywgd2hv
IGNvbnRyaWJ1dGVzIHRoZSBvcmlnaW5hbCBjb2RlLCBhbmQKPiA+IG1heSBoYXZlIHNvbWUgaWRl
YSBhYm91dCBpdC4KPiAKPiBTbyBpZiBDYXNjYXJkbyBkb2Vzbid0IGhhdmUgYW55IG9iamVjdGlv
biwgSSB3aWxsIGFjY2VwdC4KClNvcnJ5IGZvciB0YWtpbmcgdG9vIGxvbmcgdG8gcmVzcG9uZCwg
YXMgSSB3YXMgb24gdmFjYXRpb24uCgpUaGUga2VybmVscyB0aGF0IGhhZCBjb21taXQgODNlM2M0
ODcyOWQ5LCBidXQgbm90IGNvbW1pdCBhMGIxMjgwMzY4ZDEsIGFyZQpub3Qgc3VwcG9ydGVkIGFu
eW1vcmUuIEluIGEgd2F5IHRoYXQgaXQncyBldmVuIGhhcmQgZm9yIG1lIHRvIHRlc3QgdGhlbS4K
Ckhvd2V2ZXIsIEkgbWFuYWdlZCB0byB0ZXN0IGl0LCBhbmQgdGhvc2UgdHdvIGxpbmVzIGFyZSBk
ZWZpbml0aXZlbHkgbmVlZGVkCnRvIGR1bXAgYSBWTSBydW5uaW5nIHN1Y2ggYSBrZXJuZWwuIElz
IHJlbW92aW5nIHRoZW0gcmVhbGx5IG5lZWRlZCB0byBmaXgKdGhpcyBpc3N1ZT8KCk90aGVyd2lz
ZSwgSSB3b3VsZCByYXRoZXIga2VlcCB0aGVtLgoKVGhhbmtzLgpDYXNjYXJkby4KCj4gCj4gVGhh
bmtzLAo+IEthenUKPiAKPiBQLlMuIE15IGVtYWlsIGFkZHJlc3MgaGFzIGJlZW4gY2hhbmdlZCB0
byBrLWhhZ2lvLWFiQG5lYy5jb20uCj4gUGxlYXNlIHNlbmQgZW1haWwgdG8gdGhpcyBhZGRyZXNz
IGluIHRoZSBmdXR1cmUuICBUaGFua3MuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
